Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from enterprise02.smtp.diehl.com ([193.201.238.220])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jxPWh-00086m-Mw
 for barebox@lists.infradead.org; Mon, 20 Jul 2020 06:43:53 +0000
From: Denis Osterland-Heim <denis.osterland@diehl.com>
Date: Mon, 20 Jul 2020 06:43:39 +0000
Message-ID: <20200720064312.22894-1-Denis.Osterland@diehl.com>
Content-Language: en-US
MIME-Version: 1.0
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
Subject: [PATCH] dtc_cpp: allow to pass options per target
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

This patch adds support to pass extra option per target to DTC CPP.

For example:

    DTC_CPP_FLAGS_my-board-name.dtb :=3D -DMY_DEFINE=3Dextra
    lwl-dtb-$(CONFIG_MACH_MY_BOARD_NAME) +=3D my-board-name.dtb.o

Signed-off-by: Denis Osterland-Heim <Denis.Osterland@diehl.com>
---
 scripts/Makefile.lib | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 39cc24b196a2..c8f3be8aad01 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -178,6 +178,7 @@ dtc_cpp_flags  =3D -Wp,-MD,$(depfile).pre -nostdinc    =
                    \
 		 -I$(srctree)/dts/include                                \
 		 -I$(srctree)/include                                    \
 		 -I$(srctree)/dts/src/                                   \
+		 $(DTC_CPP_FLAGS_$(basetarget).dtb)                      \
 		 -undef -D__DTS__
 =

 ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
-- =

2.27.0



Diehl Connectivity Solutions GmbH
Gesch=E4ftsf=FChrung: Horst Leonberger
Sitz der Gesellschaft: N=FCrnberg - Registergericht: Amtsgericht
N=FCrnberg: HRB 32315
___________________________________________________________________________=
________________________

Der Inhalt der vorstehenden E-Mail ist nicht rechtlich bindend. Diese E-Mai=
l enthaelt vertrauliche und/oder rechtlich geschuetzte Informationen.
Informieren Sie uns bitte, wenn Sie diese E-Mail faelschlicherweise erhalte=
n haben. Bitte loeschen Sie in diesem Fall die Nachricht.
Jede unerlaubte Form der Reproduktion, Bekanntgabe, Aenderung, Verteilung u=
nd/oder Publikation dieser E-Mail ist strengstens untersagt.
- Informationen zum Datenschutz, insbesondere zu Ihren Rechten, erhalten Si=
e unter https://www.diehl.com/group/de/transparenz-und-informationspflichte=
n/

The contents of the above mentioned e-mail is not legally binding. This e-m=
ail contains confidential and/or legally protected information. Please info=
rm us if you have received this e-mail by
mistake and delete it in such a case. Each unauthorized reproduction, discl=
osure, alteration, distribution and/or publication of this e-mail is strict=
ly prohibited. =

- For general information on data protection and your respective rights ple=
ase visit https://www.diehl.com/group/en/transparency-and-information-oblig=
ations/

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
