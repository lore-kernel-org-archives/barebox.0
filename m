Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x233.google.com ([2a00:1450:400c:c09::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYBRo-0007Ca-K2
 for barebox@lists.infradead.org; Tue, 23 Feb 2016 11:48:10 +0000
Received: by mail-wm0-x233.google.com with SMTP id c200so216125085wme.0
 for <barebox@lists.infradead.org>; Tue, 23 Feb 2016 03:47:48 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20160223083236.GA3939@pengutronix.de>
References: <CABQt-UnnTJffkX_6hCXOjh+hgkjiGausWuuCwwEWncvpoiTqAQ@mail.gmail.com>
 <20160223083236.GA3939@pengutronix.de>
Date: Tue, 23 Feb 2016 12:47:46 +0100
Message-ID: <CABQt-U=+f_5EJvw=9FFbw2cR2A54te6WN3Dgn4jtyuoPvC+CzQ@mail.gmail.com>
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

> Parallel display support for IPUv3 is not yet implemented.
I could have searched a long time ^^' (Fortunately there is the mailing list!)

I tried to add the simple panel but I do not get any framebuffer?

Here is the output of devinfo panel.13:
Driver: simple-panel
Bus: platform
Device node: /panel
panel {
        compatible = "simple-panel";
        status = "okay";
        display-timings {
                clock-frequency = <0x895440 0xe4e1c0>;
                hactive = <0x1e0>;
                vactive = <0x110>;
                hfront-porch = <0x2 0x2 0x52>;
                hback-porch = <0x2 0x2 0x29>;
                hsync-len = <0x2 0x29 0x29>;
                vback-porch = <0x1 0x2 0xb>;
                vfront-porch = <0x1 0x2 0xe3>;
                vsync-len = <0x1 0xa 0xb>;
                pixelclk-active = <0x1>;
                hsync-active = <0x0>;
                vsync-active = <0x0>;
                de-active = <0x1>;
        };
        port {
                enpoint {
                        remote-endpoint = <0x3d>;
                        linux,phandle = <0x2b>;
                        phandle = <0x2b>;
                };
        };
};

So it seems that the driver is loaded, but there is no entry point for
the 'userspace'.


> Note that this binding is not compatible with the kernel
since the maintainer refuses to let display timings into the device tree
for simple panels.
OK, good to know.


Philippe LEDUC
ledphilippe@gmail.com


2016-02-23 9:32 GMT+01:00 Sascha Hauer <s.hauer@pengutronix.de>:
> On Mon, Feb 22, 2016 at 05:41:01PM +0100, Philippe Leduc wrote:
>> Hello,
>>
>> I would like to use the barebox framebuffer on a iMX6S chip. My goal
>> is to display a splashscreen. However, I can't manage to use the
>> framebuffer for now...
>>
>> Here is the output of "devinfo fb0":
>> Resources:
>>   num: 0
>>   start: 0x00000000
>>   size: 0x00000000
>> Available modes:
>> Parameters:
>>   enable: 0
>>   mode_name: invalid:0
>>   shadowfb: 1
>>
>> Is this a correct behavior that there is NO availables modes? I do not
>> manage to add one through the DTS.
>>
>> If I try to enable the framebuffer (fb0.enable=1), barebox hangs:
>> fb0.enable=1
>> unable to handle NULL pointer dereference at address 0x0000001d
>> pc : [<2ff1ab1c>]    lr : [<2ff17f41>]
>> sp : 2ffffa3c  ip : 2ff1a3fa  fp : 2ffffa78
>> r10: 20212d0c  r9 : 00000000  r8 : 00000000
>> r7 : 20024210  r6 : f57fffff  r5 : 0c000000  r4 : 0000001d
>> r3 : 2ff1a1e5  r2 : 0c000000  r1 : 0000005c  r0 : 00000022
>> Flags: nzcv  IRQs off  FIQs off  Mode SVC_32
>> [<2ff1ab1c>] (clk_is_enabled+0x34/0x38) from [<7f8d1fc0>] (0x7f8d1fc0)
>>
>> [<2ff389d9>] (unwind_backtrace+0x1/0x58) from [<2ff00d19>] (panic+0x1d/0x34)
>> [<2ff00d19>] (panic+0x1d/0x34) from [<2ff38e7d>] (do_exception+0xd/0x10)
>> [<2ff38e7d>] (do_exception+0xd/0x10) from [<2ff38edd>] (do_data_abort+0x21/0x2c)
>> [<2ff38edd>] (do_data_abort+0x21/0x2c) from [<2ff38bd4>] (do_abort_6+0x48/0x54)
>> Switch to console [serial0]
>>
>> Here is what I put in the DTS to enable the display:
>>
>> display0: display@di0 {
>>       compatible = "fsl,imx-parallel-display";
>> //      crtcs = <&ipu1 0>;
>>       interface-pix-fmt = "rgb24";
>>       pinctrl-names = "default";
>>       pinctrl-0 = <&pinctrl_ipu_disp>;
>>       status = "okay";
>>
>>       display-timings {
>>         rk043fn07h {
>>           native-mode;
>>           clock-frequency = <9000000 15000000>;
>>           hactive = <480>;
>>           vactive = <272>;
>>           hfront-porch = <2 2 82>;
>>           hback-porch = <2 2 41>;
>>           hsync-len = <2 41 41>;
>>           vback-porch = <1 2 11>;
>>           vfront-porch = <1 2 227>;
>>           vsync-len = <1 10 11>;
>>           pixelclk-active = <1>;
>>           hsync-active = <0>;
>>           vsync-active = <0>;
>>           de-active = <1>;
>>         };
>>       };
>>
>>       port {
>>         display0_in: endpoint {
>>           remote-endpoint = <&ipu1_di0_disp0>;
>>         };
>>       };
>>
>>
>> &ipu1_di0_disp0 {
>>   remote-endpoint = <&display0_in>;
>> };
>
> Parallel display support for IPUv3 is not yet implemented. What's
> missing is a driver that matches to "fsl,imx-parallel-display", calls
> vpl_register on its own node and returns the display timings parsed from
> device tree in the VPL_GET_VIDEOMODES callback.
>
> You could try the following binding instead. It doesn't use the
> "fsl,imx-parallel-display" compatible but the "simple-panel" binding
> instead. Since IPU parallel display support is a no-op anyway this
> should work. Note that this binding is not compatible with the kernel
> since the maintainer refuses to let display timings into the device tree
> for simple panels.
>
> panel {
>         compatible = "simple-panel";
>
>         display-timings {
>                 /* your timings here */
>         };
>
>         port {
>                 display0_in: enpoint {
>                         remote-endpoint = <&ipu1_di0_disp0>;
>                 };
>         };
> };
>
> &ipu1_di0_disp0 {
>         interface-pix-fmt = "rgb24";
>         remote-endpoint = <&display0_in>;
> };
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
