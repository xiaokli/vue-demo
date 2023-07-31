import { describe, it, expect } from 'vitest'

import { mount } from '@vue/test-utils'
import Demo from '../Demo.vue'

describe('HelloWorld', () => {
  it('renders properly', () => {
    const wrapper = mount(Demo, { props: { msg: 'Hello Vitest' } })
    expect(wrapper.text()).toContain('about')
  })
})
