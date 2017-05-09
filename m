Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1d86lK-0006BE-Sm
 for barebox@lists.infradead.org; Tue, 09 May 2017 15:09:20 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id E46AFA0079C
 for <barebox@lists.infradead.org>; Tue,  9 May 2017 17:09:41 +0200 (CEST)
MIME-Version: 1.0
In-Reply-To: 
References: 
From: =?ISO-8859-1?Q?Stefan_Riedm=FCller?= <S.Riedmueller@phytec.de>
Message-ID: <OF7204A8B9.F7D47FA3-ONC125811B.00533563-C125811B.00533568@phytec.de>
Date: Tue, 9 May 2017 17:08:51 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: master breaks phytec-phycore-imx6ul
To: barebox@lists.infradead.org

Hi guys,

after applying the latest master patches barebox does not boot anymore on m=
y PHYTEC-phyCORE-i.MX6UL. It doesn't show any output. I was able to identif=
y the commit which seems to be responsible for this behavior.

It's 2c506afbadcd546dcc54a0e8599e454fd4aecfdc (ARM: i.MX50: Add support for=
 i.MX50 based Amazon Kindle e-book readers).

It is possible to make the board boot again by disabling System Type --> CO=
NFIG_MACH_KINDLE_MX50 (i.MX50 based Amazon Kindle 4 and 5) in the menuconfi=
g. This deactivates ARCH_IMX50. I also tested it on the PHYTEC-phyCORE-i.MX=
6-Quad board and the Fresscale SabreSD board with i.MX6 Quad and found the =
same behavior. I could not find an explanation yet for this so I hope you c=
an help me.

Mit freundlichen Gr=FC=DFen,
Best regards,

Stefan Riedm=FCller


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
