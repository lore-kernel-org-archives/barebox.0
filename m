Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from enterprise02.smtp.diehl.com ([193.201.238.220])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g7xhP-0003Gg-RD
 for barebox@lists.infradead.org; Thu, 04 Oct 2018 07:05:30 +0000
From: Denis OSTERLAND <denis.osterland@diehl.com>
Date: Thu, 4 Oct 2018 07:05:09 +0000
Message-ID: <20181004070400.12338-1-Denis.Osterland@diehl.com>
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
Subject: [PATCH] hab: Print events on info command.
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: Denis OSTERLAND <denis.osterland@diehl.com>

From: Denis Osterland <Denis.Osterland@diehl.com>

This patch calls *_hab_get_status function as part of hab info command.
This function works only if MMU is disabled.

Signed-off-by: Denis Osterland <Denis.Osterland@diehl.com>
---
 commands/hab.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/commands/hab.c b/commands/hab.c
index 0d7ee8e76..9027b7cb5 100644
--- a/commands/hab.c
+++ b/commands/hab.c
@@ -72,6 +72,18 @@ static int do_hab(int argc, char *argv[])
 		else
 			printf("devel mode\n");
 =

+#ifdef CONFIG_MMU
+		printf("Disable MMU to access HAB API!\n");
+#else
+# if defined(CONFIG_ARCH_IMX6)
+		imx6_hab_get_status();
+# elif defined(CONFIG_ARCH_IMX28)
+		imx28_hab_get_status();
+# elif defined(CONFIG_ARCH_IMX25)
+		imx25_hab_get_status();
+# endif
+#endif // CONFIG_MMU
+
 		return 0;
 	}
 =

-- =

2.19.0



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
The contents of the above mentioned e-mail is not legally binding. This e-m=
ail contains confidential and/or legally protected information. Please info=
rm us if you have received this e-mail by
mistake and delete it in such a case. Each unauthorized reproduction, discl=
osure, alteration, distribution and/or publication of this e-mail is strict=
ly prohibited. =


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
