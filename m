Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22a.google.com ([2a00:1450:400c:c09::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYUis-00018S-KL
 for barebox@lists.infradead.org; Wed, 24 Feb 2016 08:23:06 +0000
Received: by mail-wm0-x22a.google.com with SMTP id a4so18223998wme.1
 for <barebox@lists.infradead.org>; Wed, 24 Feb 2016 00:22:41 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CABQt-U=+f_5EJvw=9FFbw2cR2A54te6WN3Dgn4jtyuoPvC+CzQ@mail.gmail.com>
References: <CABQt-UnnTJffkX_6hCXOjh+hgkjiGausWuuCwwEWncvpoiTqAQ@mail.gmail.com>
 <20160223083236.GA3939@pengutronix.de>
 <CABQt-U=+f_5EJvw=9FFbw2cR2A54te6WN3Dgn4jtyuoPvC+CzQ@mail.gmail.com>
Date: Wed, 24 Feb 2016 09:22:40 +0100
Message-ID: <CABQt-U=jXuJMJY1Uew4cVa2Ap=dpX9rzW91JbiuRSDpeuf+C0g@mail.gmail.com>
From: Philippe Leduc <ledphilippe@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Help configuring i.MX6 IPUv3 with a parrallel display
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

Since I do not manage to get a splashscreen with the simple-panel
driver, I tried the other way: adding a driver for
imx-parrallel-display that exposes the display-timings. So far I
managed to add a video mode to my framebuffer:

devinfo fb0
Resources:
  num: 0
  start: 0x2005a000
  size: 0x0007f800
Available modes:
  rk043fn07h: 480x272@0
Parameters:
  enable: 0
  mode_name: rk043fn07h
  shadowfb: 1

But there is no refresh rate? Don't know if it is a problem, but my
framebuffer still doesn't want to work (however it is more or less
better than before):

fb0.enable=1
imx-ipuv3-crtc imx-ipuv3-crtc0: ipu_crtc_mode_set: mode->xres: 480
imx-ipuv3-crtc imx-ipuv3-crtc0: ipu_crtc_mode_set: mode->yres: 272
imx-ipuv3-crtc imx-ipuv3-crtc0: initializing display controller failed with -22


So far so good I'll continue to dig up, but if you have some advices,
it would be helpful!

Best regards,

--
Philippe LEDUC
ledphilippe@gmail.com


2016-02-23 12:47 GMT+01:00 Philippe Leduc <ledphilippe@gmail.com>:
>> Parallel display support for IPUv3 is not yet implemented.
> I could have searched a long time ^^' (Fortunately there is the mailing list!)
>
> I tried to add the simple panel but I do not get any framebuffer?
>
> Here is the output of devinfo panel.13:
> Driver: simple-panel
> Bus: platform
> Device node: /panel
> panel {
>         compatible = "simple-panel";
>         status = "okay";
>         display-timings {
>                 clock-frequency = <0x895440 0xe4e1c0>;
>                 hactive = <0x1e0>;
>                 vactive = <0x110>;
>                 hfront-porch = <0x2 0x2 0x52>;
>                 hback-porch = <0x2 0x2 0x29>;
>                 hsync-len = <0x2 0x29 0x29>;
>                 vback-porch = <0x1 0x2 0xb>;
>                 vfront-porch = <0x1 0x2 0xe3>;
>                 vsync-len = <0x1 0xa 0xb>;
>                 pixelclk-active = <0x1>;
>                 hsync-active = <0x0>;
>                 vsync-active = <0x0>;
>                 de-active = <0x1>;
>         };
>         port {
>                 enpoint {
>                         remote-endpoint = <0x3d>;
>                         linux,phandle = <0x2b>;
>                         phandle = <0x2b>;
>                 };
>         };
> };
>
> So it seems that the driver is loaded, but there is no entry point for
> the 'userspace'.
>
>
>> Note that this binding is not compatible with the kernel
> since the maintainer refuses to let display timings into the device tree
> for simple panels.
> OK, good to know.
>
>
> Philippe LEDUC
> ledphilippe@gmail.com
>
>
> 2016-02-23 9:32 GMT+01:00 Sascha Hauer <s.hauer@pengutronix.de>:
>> On Mon, Feb 22, 2016 at 05:41:01PM +0100, Philippe Leduc wrote:
>>> Hello,
>>>
>>> I would like to use the barebox framebuffer on a iMX6S chip. My goal
>>> is to display a splashscreen. However, I can't manage to use the
>>> framebuffer for now...
>>>
>>> Here is the output of "devinfo fb0":
>>> Resources:
>>>   num: 0
>>>   start: 0x00000000
>>>   size: 0x00000000
>>> Available modes:
>>> Parameters:
>>>   enable: 0
>>>   mode_name: invalid:0
>>>   shadowfb: 1
>>>
>>> Is this a correct behavior that there is NO availables modes? I do not
>>> manage to add one through the DTS.
>>>
>>> If I try to enable the framebuffer (fb0.enable=1), barebox hangs:
>>> fb0.enable=1
>>> unable to handle NULL pointer dereference at address 0x0000001d
>>> pc : [<2ff1ab1c>]    lr : [<2ff17f41>]
>>> sp : 2ffffa3c  ip : 2ff1a3fa  fp : 2ffffa78
>>> r10: 20212d0c  r9 : 00000000  r8 : 00000000
>>> r7 : 20024210  r6 : f57fffff  r5 : 0c000000  r4 : 0000001d
>>> r3 : 2ff1a1e5  r2 : 0c000000  r1 : 0000005c  r0 : 00000022
>>> Flags: nzcv  IRQs off  FIQs off  Mode SVC_32
>>> [<2ff1ab1c>] (clk_is_enabled+0x34/0x38) from [<7f8d1fc0>] (0x7f8d1fc0)
>>>
>>> [<2ff389d9>] (unwind_backtrace+0x1/0x58) from [<2ff00d19>] (panic+0x1d/0x34)
>>> [<2ff00d19>] (panic+0x1d/0x34) from [<2ff38e7d>] (do_exception+0xd/0x10)
>>> [<2ff38e7d>] (do_exception+0xd/0x10) from [<2ff38edd>] (do_data_abort+0x21/0x2c)
>>> [<2ff38edd>] (do_data_abort+0x21/0x2c) from [<2ff38bd4>] (do_abort_6+0x48/0x54)
>>> Switch to console [serial0]
>>>
>>> Here is what I put in the DTS to enable the display:
>>>
>>> display0: display@di0 {
>>>       compatible = "fsl,imx-parallel-display";
>>> //      crtcs = <&ipu1 0>;
>>>       interface-pix-fmt = "rgb24";
>>>       pinctrl-names = "default";
>>>       pinctrl-0 = <&pinctrl_ipu_disp>;
>>>       status = "okay";
>>>
>>>       display-timings {
>>>         rk043fn07h {
>>>           native-mode;
>>>           clock-frequency = <9000000 15000000>;
>>>           hactive = <480>;
>>>           vactive = <272>;
>>>           hfront-porch = <2 2 82>;
>>>           hback-porch = <2 2 41>;
>>>           hsync-len = <2 41 41>;
>>>           vback-porch = <1 2 11>;
>>>           vfront-porch = <1 2 227>;
>>>           vsync-len = <1 10 11>;
>>>           pixelclk-active = <1>;
>>>           hsync-active = <0>;
>>>           vsync-active = <0>;
>>>           de-active = <1>;
>>>         };
>>>       };
>>>
>>>       port {
>>>         display0_in: endpoint {
>>>           remote-endpoint = <&ipu1_di0_disp0>;
>>>         };
>>>       };
>>>
>>>
>>> &ipu1_di0_disp0 {
>>>   remote-endpoint = <&display0_in>;
>>> };
>>
>> Parallel display support for IPUv3 is not yet implemented. What's
>> missing is a driver that matches to "fsl,imx-parallel-display", calls
>> vpl_register on its own node and returns the display timings parsed from
>> device tree in the VPL_GET_VIDEOMODES callback.
>>
>> You could try the following binding instead. It doesn't use the
>> "fsl,imx-parallel-display" compatible but the "simple-panel" binding
>> instead. Since IPU parallel display support is a no-op anyway this
>> should work. Note that this binding is not compatible with the kernel
>> since the maintainer refuses to let display timings into the device tree
>> for simple panels.
>>
>> panel {
>>         compatible = "simple-panel";
>>
>>         display-timings {
>>                 /* your timings here */
>>         };
>>
>>         port {
>>                 display0_in: enpoint {
>>                         remote-endpoint = <&ipu1_di0_disp0>;
>>                 };
>>         };
>> };
>>
>> &ipu1_di0_disp0 {
>>         interface-pix-fmt = "rgb24";
>>         remote-endpoint = <&display0_in>;
>> };
>>
>> Sascha
>>
>> --
>> Pengutronix e.K.                           |                             |
>> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
>> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
