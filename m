Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from qmail34.e-mind.com ([188.94.192.34] helo=qmail.e-mind.com)
 by bombadil.infradead.org with smtp (Exim 4.87 #1 (Red Hat Linux))
 id 1dPU4U-0000bS-2Z
 for barebox@lists.infradead.org; Mon, 26 Jun 2017 13:28:57 +0000
References: <63687e34-f354-81d3-aed7-1a59866925c5@eurekelettronica.it>
 <2f43179e-2aa0-1dba-eafa-a9c0025afd24@eurekelettronica.it>
 <1487689380.2268.18.camel@pengutronix.de>
 <82857526-9f9a-2878-9b8e-070f124e2a41@eurekelettronica.it>
 <20170621063246.wdfct6r2boyx4xo3@pengutronix.de>
 <126e2527-f179-0c82-c384-c6c975a7c8e9@eurekelettronica.it>
 <1498045832.2904.105.camel@pengutronix.de>
 <3f12f02e-cccc-1edb-94d1-8cff2b69c808@eurekelettronica.it>
 <1498059009.2904.108.camel@pengutronix.de>
 <aaba2d2b-6d53-07a7-bfdd-f70c22ad13c6@eurekelettronica.it>
 <f950d875-85a7-988a-5425-441a05339a7c@eurekelettronica.it>
 <1498466766.2414.5.camel@pengutronix.de>
From: gianluca <gianlucarenzi@eurekelettronica.it>
Message-ID: <5e3f93ae-e91a-8e89-9979-e90584c5ad3d@eurekelettronica.it>
Date: Mon, 26 Jun 2017 15:28:28 +0200
MIME-Version: 1.0
In-Reply-To: <1498466766.2414.5.camel@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Fwd: Barebox 2017.02 works great but no Linux Framebuffer... :-/
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On 06/26/2017 10:46 AM, Lucas Stach wrote:
> Am Montag, den 26.06.2017, 10:40 +0200 schrieb gianluca:
>> During boot I can see no output on the framebuffer on the QuadPlus
>> and
>> the kernel log have those messages:
>>
>>> [    4.914737] ------------[ cut here ]------------
>>> [    4.914769] WARNING: CPU: 1 PID: 17 at
>>> drivers/gpu/drm/drm_atomic_helper.c:1140
>>> drm_atomic_helper_wait_for_vblanks+0x258/0x25c
>>> [    4.914772] [CRTC:24] vblank wait timed out
>>> [    4.914846] Modules linked in: evdev joydev rfkill at24
>>> nvmem_imx_ocotp ci_hdrc_imx nvmem_core sx8656_ek(O) ci_hdrc
>>> udc_core ehci_hcd usbcore usbmisc_imx coda phy_mxs_usb v4l2_mem2mem
>>> panel_simple videobuf2_v4l2 imx_thermal videobuf2_dma_contig
>>> imx2_wdt videobuf2_core snd_soc_fsl_asrc flexcan can_dev
>>> videobuf2_vmalloc snd_soc_fsl_asoc_card videobuf2_memops pwm_bl
>>> pwm_imx snd_ac97_codec backlight leds_gpio
>>> [    4.914856] CPU: 1 PID: 17 Comm: kworker/1:0 Tainted:
>>> G           O    4.9.7-EK20170623 #1
>>> [    4.914859] Hardware name: Freescale i.MX6 Quad/DualLite (Device
>>> Tree)
>>> [    4.914875] Workqueue: events deferred_probe_work_func
>>> [    4.914900] [<c0115354>] (unwind_backtrace) from [<c010e414>]
>>> (show_stack+0x20/0x24)
>>> [    4.914915] [<c010e414>] (show_stack) from [<c04716f8>]
>>> (dump_stack+0x94/0xb0)
>>> [    4.914927] [<c04716f8>] (dump_stack) from [<c014cd8c>]
>>> (__warn+0xf8/0x110)
>>> [    4.914937] [<c014cd8c>] (__warn) from [<c014ce74>]
>>> (warn_slowpath_fmt+0x48/0x50)
>>> [    4.914951] [<c014ce74>] (warn_slowpath_fmt) from [<c05ca298>]
>>> (drm_atomic_helper_wait_for_vblanks+0x258/0x25c)
>>> [    4.914970] [<c05ca298>] (drm_atomic_helper_wait_for_vblanks)
>>> from [<c05f6ef4>] (imx_drm_atomic_commit_tail+0x58/0x68)
>>> [    4.914982] [<c05f6ef4>] (imx_drm_atomic_commit_tail) from
>>> [<c05cac64>] (commit_tail+0x50/0x6c)
>>> [    4.914992] [<c05cac64>] (commit_tail) from [<c05cb890>]
>>> (drm_atomic_helper_commit+0xa4/0xe4)
>>> [    4.915003] [<c05cb890>] (drm_atomic_helper_commit) from
>>> [<c05f7008>] (imx_drm_atomic_commit+0x104/0x130)
>>> [    4.915021] [<c05f7008>] (imx_drm_atomic_commit) from
>>> [<c05ec25c>] (drm_atomic_commit+0x5c/0x68)
>>> [    4.915038] [<c05ec25c>] (drm_atomic_commit) from [<c05cf358>]
>>> (restore_fbdev_mode+0x158/0x298)
>>> [    4.915051] [<c05cf358>] (restore_fbdev_mode) from [<c05cf6bc>]
>>> (drm_fb_helper_restore_fbdev_mode_unlocked+0x40/0x84)
>>> [    4.915063] [<c05cf6bc>]
>>> (drm_fb_helper_restore_fbdev_mode_unlocked) from [<c05cf578>]
>>> (drm_fb_helper_set_par+0x40/0x6c)
>>> [    4.915076] [<c05cf578>] (drm_fb_helper_set_par) from
>>> [<c04fe008>] (fbcon_init+0x4b4/0x4f8)
>>> [    4.915088] [<c04fe008>] (fbcon_init) from [<c05876e0>]
>>> (visual_init+0xd4/0x11c)
>>> [    4.915102] [<c05876e0>] (visual_init) from [<c05898b4>]
>>> (do_bind_con_driver+0x14c/0x334)
>>> [    4.915112] [<c05898b4>] (do_bind_con_driver) from [<c0589bec>]
>>> (do_take_over_console+0x150/0x1b4)
>>> [    4.915121] [<c0589bec>] (do_take_over_console) from
>>> [<c04fe0d4>] (do_fbcon_takeover+0x88/0xe8)
>>> [    4.915130] [<c04fe0d4>] (do_fbcon_takeover) from [<c04feda8>]
>>> (fbcon_event_notify+0x7c0/0x7f8)
>>> [    4.915142] [<c04feda8>] (fbcon_event_notify) from [<c016f57c>]
>>> (notifier_call_chain+0x54/0x94)
>>> [    4.915153] [<c016f57c>] (notifier_call_chain) from [<c016f88c>]
>>> (__blocking_notifier_call_chain+0x58/0x70)
>>> [    4.915164] [<c016f88c>] (__blocking_notifier_call_chain) from
>>> [<c016f8cc>] (blocking_notifier_call_chain+0x28/0x30)
>>> [    4.915175] [<c016f8cc>] (blocking_notifier_call_chain) from
>>> [<c0504d5c>] (fb_notifier_call_chain+0x2c/0x30)
>>> [    4.915187] [<c0504d5c>] (fb_notifier_call_chain) from
>>> [<c0506b10>] (register_framebuffer+0x1f8/0x2b0)
>>> [    4.915200] [<c0506b10>] (register_framebuffer) from
>>> [<c05cf960>] (drm_fb_helper_initial_config+0x260/0x408)
>>> [    4.915212] [<c05cf960>] (drm_fb_helper_initial_config) from
>>> [<c05d00a0>] (drm_fbdev_cma_init_with_funcs+0x90/0x110)
>>> [    4.915223] [<c05d00a0>] (drm_fbdev_cma_init_with_funcs) from
>>> [<c05d0148>] (drm_fbdev_cma_init+0x28/0x30)
>>> [    4.915236] [<c05d0148>] (drm_fbdev_cma_init) from [<c05f7180>]
>>> (imx_drm_bind+0x104/0x194)
>>> [    4.915254] [<c05f7180>] (imx_drm_bind) from [<c061b780>]
>>> (try_to_bring_up_master+0x234/0x294)
>>> [    4.915266] [<c061b780>] (try_to_bring_up_master) from
>>> [<c061b8a0>] (component_add+0xc0/0x158)
>>> [    4.915277] [<c061b8a0>] (component_add) from [<c05fa178>]
>>> (ipu_drm_probe+0x68/0x74)
>>> [    4.915291] [<c05fa178>] (ipu_drm_probe) from [<c0622e90>]
>>> (platform_drv_probe+0x60/0xc0)
>>> [    4.915304] [<c0622e90>] (platform_drv_probe) from [<c0620ce4>]
>>> (driver_probe_device+0x238/0x428)
>>> [    4.915314] [<c0620ce4>] (driver_probe_device) from [<c0621230>]
>>> (__device_attach_driver+0xac/0x10c)
>>> [    4.915324] [<c0621230>] (__device_attach_driver) from
>>> [<c061ec18>] (bus_for_each_drv+0x54/0x9c)
>>> [    4.915335] [<c061ec18>] (bus_for_each_drv) from [<c06209a8>]
>>> (__device_attach+0xb0/0x134)
>>> [    4.915344] [<c06209a8>] (__device_attach) from [<c06212ac>]
>>> (device_initial_probe+0x1c/0x20)
>>> [    4.915354] [<c06212ac>] (device_initial_probe) from
>>> [<c061fdb8>] (bus_probe_device+0x94/0x9c)
>>> [    4.915364] [<c061fdb8>] (bus_probe_device) from [<c0620290>]
>>> (deferred_probe_work_func+0x7c/0xc8)
>>> [    4.915377] [<c0620290>] (deferred_probe_work_func) from
>>> [<c01679dc>] (process_one_work+0x14c/0x440)
>>> [    4.915386] [<c01679dc>] (process_one_work) from [<c0167d6c>]
>>> (worker_thread+0x54/0x504)
>>> [    4.915398] [<c0167d6c>] (worker_thread) from [<c016de48>]
>>> (kthread+0xf0/0x108)
>>> [    4.915415] [<c016de48>] (kthread) from [<c0109cf8>]
>>> (ret_from_fork+0x14/0x3c)
>>> [    4.915419] ---[ end trace 64ae59d2b69cc4d3 ]---
>>>
>>
>> and after a while:
>>
>>> [   15.102758] [drm:drm_atomic_helper_commit_cleanup_done] *ERROR*
>>> [CRTC:24:crtc-0] flip_done timed out
>>> [   25.342746] [drm:drm_atomic_helper_commit_cleanup_done] *ERROR*
>>> [CRTC:24:crtc-0] flip_done timed out
>>> [   25.358582] Console: switching to colour frame buffer device
>>> 160x50
>>> [   35.582744] [drm:drm_atomic_helper_commit_cleanup_done] *ERROR*
>>> [CRTC:24:crtc-0] flip_done timed out
>>> [   36.214243] imx-drm display-subsystem: fb0:  frame buffer device
>>> [   46.334758] [drm:drm_atomic_helper_commit_cleanup_done] *ERROR*
>>> [CRTC:24:crtc-0] flip_done timed out
>>> [   56.574757] [drm:drm_atomic_helper_commit_cleanup_done] *ERROR*
>>> [CRTC:24:crtc-0] flip_done timed out
>>> [   66.814751] [drm:drm_atomic_helper_commit_cleanup_done] *ERROR*
>>> [CRTC:24:crtc-0] flip_done timed out
>>> [   77.054740] [drm:drm_atomic_helper_commit_cleanup_done] *ERROR*
>>> [CRTC:24:crtc-0] flip_done timed out
>>> [   87.294748] [drm:drm_atomic_helper_commit_cleanup_done] *ERROR*
>>> [CRTC:24:crtc-0] flip_done timed out
>>> [   97.534744] [drm:drm_atomic_helper_commit_cleanup_done] *ERROR*
>>> [CRTC:24:crtc-0] flip_done timed out
>>> [  107.774751] [drm:drm_atomic_helper_commit_cleanup_done] *ERROR*
>>> [CRTC:24:crtc-0] flip_done timed out
>>> [  118.014750] [drm:drm_atomic_helper_commit_cleanup_done] *ERROR*
>>> [CRTC:24:crtc-0] flip_done timed out
>>
>> On both board the kernel cmd line is:
>>> ~# cat /proc/cmdline
>>> console=ttymxc2,115200 rootwait noswap ip=none noinitrd
>>> rootfstype=nilfs2 root=/dev/mmcblk1p3
>>> fec.macaddr=0x7a,0x3f,0x03,0xe3,0xa2,0xff system_rev=0xe3600000
>>> system_serialnr=0x00000000 lcd_type=am1280800n3tz fastboot
>>> imxdrm.legacyfb_depth=32
>>
>> Any help?
>
> Your kernel is too old. Full support for the QuadPlus is a really
> recent addition. Either update your kernel to 4.12-rc, or add
> "clk_ignore_unused" to get at least basic functionality working.
>


Now I am compiling the 4.12-rc7. Hope this helps.

I will keep you informed about that...

Regards,
-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
