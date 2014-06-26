Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yh0-x22e.google.com ([2607:f8b0:4002:c01::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X08No-0000vM-Vw
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 12:02:31 +0000
Received: by mail-yh0-f46.google.com with SMTP id c41so2038626yho.5
 for <barebox@lists.infradead.org>; Thu, 26 Jun 2014 05:02:07 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140624071749.GD15686@pengutronix.de>
References: <1403591596-13955-1-git-send-email-dev@lynxeye.de>
 <20140624071749.GD15686@pengutronix.de>
Date: Thu, 26 Jun 2014 14:02:07 +0200
Message-ID: <CAOpc7mF83vBoY6an=CqSz_ovq9rVdr9tjtR32fVdNqneD=_pfw@mail.gmail.com>
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
Subject: Re: [PATCH 1/3] arm: imx6: move imx6_init_lowlevel to single initcall
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hmm, I have removed the imx6_init_lowlevel() from my (out-of-tree)
board.c file. Still I get this warning:

__request_region: 0x10000000:0x4fffffff conflicts with 0x10000000:0x4fffffff

Could this be related to your patchset?  In the log below, the text "
ahs2_postcore_init, after barebox_set_hostname()" is a printf()
directly before the return of that function.

Switch to console [cs0]
in ahs2_postcore_init
ahs2_postcore_init, after barebox_set_hostname()
detected i.MX6 Quad revision 1.2
Switch to console [cs0]
in ahs2_postcore_init
ahs2_postcore_init, after barebox_set_hostname()
detected i.MX6 Quad revision 1.2
__request_region: 0x10000000:0x4fffffff conflicts with 0x10000000:0x4fffffff
mdio_bus: miibus0: probed
m25p80 spiflash@00: n25q512 (65536 Kbytes)
imx-esdhc 2194000.usdhc: registered as 2194000.usdhc
imx-esdhc 219c000.usdhc: registered as 219c000.usdhc


When I remove

    memory {
      reg = <0x10000000 0x40000000>;
    };

from my DTS, then the error vanishes, but how could some other part in
barebox possible know how much memory my board has?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
