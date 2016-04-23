Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x230.google.com ([2607:f8b0:4001:c06::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1au3lw-0002hj-Mh
 for barebox@lists.infradead.org; Sat, 23 Apr 2016 20:03:21 +0000
Received: by mail-io0-x230.google.com with SMTP id f89so121266536ioi.0
 for <barebox@lists.infradead.org>; Sat, 23 Apr 2016 13:03:00 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 23 Apr 2016 17:02:59 -0300
Message-ID: <CAOMZO5ADNbiVyOxvrqJyOWUv4NpoXDi4tqQ3kXBqxbmPqHQtMA@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
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
Subject: mx6qsabresd: Cannot boot after 'saveenv'
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,

After running the 'saveenv' command on a mx6qsabresd board, I can no
longer boot Barebox:

barebox 2016.04.0-00120-gfeaf92e #18 Sat Apr 23 15:39:00 BRT 2016


Board: Freescale i.MX6 Quad SABRE Smart Device Board
detected i.MX6 Quad revision 1.1
mdio_bus: miibus0: probed
eth0: got preset MAC address: 00:04:9f:02:19:ca
m25p80 m25p80@00: m25p32 (4096 Kbytes)
imx-usb 2184200.usb: USB EHCI 1.00
imx-esdhc 2194000.usdhc: registered as 2194000.usdhc
imx-esdhc 2198000.usdhc: registered as 2198000.usdhc
imx-esdhc 219c000.usdhc: registered as 219c000.usdhc
imx-ipuv3 2400000.ipu: IPUv3H probed
imx-ipuv3 2800000.ipu: IPUv3H probed
imx-hdmi 120000.hdmi: Detected HDMI controller 0x13:0xa:0xa0:0xc1
netconsole: registered as netconsole-1
malloc space: 0x2ff7b6e0 -> 0x4fef6dbf (size 511.5 MiB)
imx-ipuv3-crtc imx-ipuv3-crtc0: failed to get modes: Invalid argument
imx-ipuv3-crtc imx-ipuv3-crtc0: probe failed: Invalid argument
imx-ipuv3-crtc imx-ipuv3-crtc1: failed to get modes: Invalid argument
imx-ipuv3-crtc imx-ipuv3-crtc1: probe failed: Invalid argument
imx-ipuv3-crtc imx-ipuv3-crtc2: failed to get modes: Invalid argument
imx-ipuv3-crtc imx-ipuv3-crtc2: probe failed: Invalid argument
imx-ipuv3-crtc imx-ipuv3-crtc3: failed to get modes: Invalid argument
imx-ipuv3-crtc imx-ipuv3-crtc3: probe failed: Invalid argument
mmc2: detected SD card version 2.0
mmc2: registered mmc2
envfs: wrong magic
running /env/bin/init...

Hit m for menu or any other key to stop autoboot:
type exit to get to the menu
barebox@Freescale i.MX6 Quad SABRE Smart Device Board:/
barebox@Freescale i.MX6 Quad SABRE Smart Device Board:/ saveenv
saving environment
barebox@Freescale i.MX6 Quad SABRE Smart Device Board:/ reset
(board hangs...)

Any suggestions on how to fix this?

Thanks,

Fabio Estevam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
