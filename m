Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x22a.google.com ([2607:f8b0:4002:c07::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WxGpT-00047l-9k
 for barebox@lists.infradead.org; Wed, 18 Jun 2014 14:27:11 +0000
Received: by mail-yk0-f170.google.com with SMTP id q9so623411ykb.15
 for <barebox@lists.infradead.org>; Wed, 18 Jun 2014 07:26:49 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 18 Jun 2014 16:26:48 +0200
Message-ID: <CAOpc7mFqu1ov94naTWtCiJMXxNk5RLa=mSL-eh3SwFXNoP1UGg@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
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
Subject: i.MX6 frame buffer inside barebox?
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi, I'm a bit puzzled. I compiled my barebox with

CONFIG_CMD_SPLASH=y
CONFIG_VIDEO=y
CONFIG_DRIVER_VIDEO_IMX_IPUV3=y
CONFIG_DRIVER_VIDEO_IMX_IPUV3_LVDS=y
CONFIG_DRIVER_VIDEO_SIMPLEFB=y

and some entries in the device tree about it (see below). And when I
boot barebox, I see /dev/fb0.

However, the LVDS signals don't come out of the CPU, e.g. LVDS_CLK0_P
/ LVDS_CLK0_N is silent. Do I need something to enable the drive as
well?  Simply writing to /dev/fb0, e.g. with the "splash" or "mw -d
/dev/fdb0" command, doesn't seem to do the magic.

As soon as I boot Linux, the LVDS signals come to live. That I cannot
yet see if it's correct because of an backlight issue is some entirely
different issue :-)


Also, what I noticed is that some clocks with "ipu" in their name are
on, others are off:

barebox:/ clk_dump
...
                    ipu1_sel (rate 528000000, enabled)
                        ipu1_podf (rate 264000000, enabled)
                            2400000.ipu_di0_pixel (rate 264000000, enabled)
                            2400000.ipu_di1_pixel (rate 264000000, enabled)
                    ipu2_sel (rate 528000000, enabled)
                        ipu2_podf (rate 264000000, enabled)
                            2800000.ipu_di0_pixel (rate 264000000, enabled)
                            2800000.ipu_di1_pixel (rate 264000000, enabled)

...
    pll5_video (rate 288000000, disabled)
        pll5_post_div (rate 72000000, disabled)
            pll5_video_div (rate 72000000, disabled)
                ldb_di0_sel (rate 72000000, disabled)
                    ldb_di0_div_3_5 (rate 20571428, disabled)
                        ldb_di0_podf (rate 10285714, disabled)
                ldb_di1_sel (rate 72000000, disabled)
                    ldb_di1_div_3_5 (rate 20571428, disabled)
                        ldb_di1_podf (rate 10285714, disabled)
                ipu1_di0_pre_sel (rate 72000000, disabled)
                    ipu1_di0_pre (rate 24000000, disabled)
                        ipu1_di0_sel (rate 24000000, disabled)
                ipu1_di1_pre_sel (rate 72000000, disabled)
                    ipu1_di1_pre (rate 24000000, disabled)
                        ipu1_di1_sel (rate 24000000, disabled)
                ipu2_di0_pre_sel (rate 72000000, disabled)
                    ipu2_di0_pre (rate 24000000, disabled)
                        ipu2_di0_sel (rate 24000000, disabled)
                ipu2_di1_pre_sel (rate 72000000, disabled)
                    ipu2_di1_pre (rate 24000000, disabled)
                        ipu2_di1_sel (rate 24000000, disabled)
...

What part of barebox is responsible to enable the needed clocks?



&ldb {
        status = "okay";

        lvds-channel@0 {
                status = "okay";
                fsl,data-mapping = "spwg";
                fsl,data-width = <18>;

                display-timings {
                        timing0: 800x600 {
                                clock-frequency = <35338240>;
                                hactive = <800>;
                                vactive = <600>;
                                hfront-porch = <46>;
                                hback-porch = <100>;
                                hsync-len = <20>;
                                hsync-active = <1>;
                                vfront-porch = <12>;
                                vback-porch = <23>;
                                vsync-len = <10>;
                                vsync-active = <1>;
                        };
                };
        };
};

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
