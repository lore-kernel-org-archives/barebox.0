Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ob0-f177.google.com ([209.85.214.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SZPQg-0001PY-4z
 for barebox@lists.infradead.org; Tue, 29 May 2012 16:37:54 +0000
Received: by obqv19 with SMTP id v19so8601883obq.36
 for <barebox@lists.infradead.org>; Tue, 29 May 2012 09:37:51 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 29 May 2012 19:37:47 +0300
Message-ID: <CAJLCkXMV6mtW7q7MtQuhJstKwb3mGXwJbunLNVKQRZ+ey_gZ2A@mail.gmail.com>
From: Maxim Gorbachyov <maxim.gorbachyov@gmail.com>
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
Subject: check if RGMII works
To: barebox@lists.infradead.org

Hello.

I'm trying to use barebox (current git version) with a Freescale
i.MX6q based board. The board is similar to Armadillo 2, but it comes
with another Ethernet PHY. Barebox starts on the board, and there is a
fec_imx0:

barebox@Freescale i.MX6q myboard:/ devinfo fec_imx0
resources:
num   : 0
start : 0x02188000
size  : 0x00001000
driver: fec_imx
no info available for fec_imx0
no parameters available

I've removed AR8031 (Armadillo 2 PHY) code from the mx6_rgmii_rework()
and added these lines:

        for (i = 0; i < 16; ++i) {
                val = mii_read(mdev, mdev->address, i);
                printf("%s() PHY register %d: 0x%04x\n", __FUNCTION__, i, val);
        }

Relevant boot log:

mx6_rgmii_rework() PHY register 0: 0x7fff
mx6_rgmii_rework() PHY register 1: 0xffff
mx6_rgmii_rework() PHY register 2: 0x7fff
mx6_rgmii_rework() PHY register 3: 0xffff
mx6_rgmii_rework() PHY register 4: 0x7fff
mx6_rgmii_rework() PHY register 5: 0xffff
mx6_rgmii_rework() PHY register 6: 0x7fff
mx6_rgmii_rework() PHY register 7: 0xffff
mx6_rgmii_rework() PHY register 8: 0x7fff
mx6_rgmii_rework() PHY register 9: 0xffff
mx6_rgmii_rework() PHY register 10: 0x7fff
mx6_rgmii_rework() PHY register 11: 0xffff
mx6_rgmii_rework() PHY register 12: 0x7fff
mx6_rgmii_rework() PHY register 13: 0xffff
mx6_rgmii_rework() PHY register 14: 0x7fff
mx6_rgmii_rework() PHY register 15: 0xffff

These values are not PHY defaults and actually look strange. I'm not
sure if mii_read() really works here.
Could you please suggest how to check if RGMII communication works?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
