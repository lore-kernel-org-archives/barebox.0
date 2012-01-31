Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RsB5O-00071M-Ir
 for barebox@lists.infradead.org; Tue, 31 Jan 2012 10:37:15 +0000
Received: by lagr15 with SMTP id r15so4341239lag.36
 for <barebox@lists.infradead.org>; Tue, 31 Jan 2012 02:37:11 -0800 (PST)
MIME-Version: 1.0
From: Igor <igt1972@gmail.com>
Date: Tue, 31 Jan 2012 11:36:51 +0100
Message-ID: <CALQ+5acXuFBGkeRgv+xR8FE2_ykWxbRggEi-AVaJhZm-ZzLk7g@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: IIM on iMX27 "how-to" needed
To: barebox@lists.infradead.org

Hi,

I'm trying to read and write the e-fuse banks on my iMX27 with Barebox
but still unsuccessfully.

I configured and compiled Barebox with IIM support, so I can see these devices:
barebox:/ ls -l /dev
crw-------         32 imx_iim_bank0
crw-------         32 imx_iim_bank1
crw-------         32 imx_iim_bank2
crw-------         32 imx_iim_bank3
crw-------         32 imx_iim_bank4
crw-------         32 imx_iim_bank5
crw-------         32 imx_iim_bank6
crw-------         32 imx_iim_bank7

and I get:
barebox:/ devinfo
[..]
`---- imx_iim0
     `---- 0x00000000-0x0000001f: /dev/imx_iim_bank0
     `---- 0x00000000-0x0000001f: /dev/imx_iim_bank1
     `---- 0x00000000-0x0000001f: /dev/imx_iim_bank2
     `---- 0x00000000-0x0000001f: /dev/imx_iim_bank3
     `---- 0x00000000-0x0000001f: /dev/imx_iim_bank4
     `---- 0x00000000-0x0000001f: /dev/imx_iim_bank5
     `---- 0x00000000-0x0000001f: /dev/imx_iim_bank6
     `---- 0x00000000-0x0000001f: /dev/imx_iim_bank7

barebox:/ devinfo imx_iim0
resources:
num   : 0
start : 0x10028000
size  : 0x00001000
driver: imx_iim

no info available for imx_iim0
Parameters:
permanent_write_enable = 0
explicit_sense_enable = 1

By the way I don't know how to read and write the fuse banks.

If I try to read them, I get:
barebox:/ md -b /dev/imx_iim_bank0
could not parse: /dev/imx_iim_bank0

Can you give me any suggestions on how to proceed with fuses?

Thanks a lot in advance,
Igor.

-- 
"Don't find fault, find a remedy."
(Henry Ford)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
