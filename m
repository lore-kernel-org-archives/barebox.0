Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from enterprise01.smtp.diehl.com ([193.201.238.219])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g8K47-0003ix-DP
 for barebox@lists.infradead.org; Fri, 05 Oct 2018 06:58:25 +0000
From: Denis OSTERLAND <denis.osterland@diehl.com>
Date: Fri, 5 Oct 2018 06:58:04 +0000
Message-ID: <20181005065537.21844-1-Denis.Osterland@diehl.com>
References: <20181004070400.12338-1-Denis.Osterland@diehl.com>
In-Reply-To: <20181004070400.12338-1-Denis.Osterland@diehl.com>
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
Subject: [PATCH v2] hab: Print events on info command.
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: Denis OSTERLAND <denis.osterland@diehl.com>

From: Denis Osterland <Denis.Osterland@diehl.com>

This patch adds hab_get_status convenience function
and uses it in hab info command.
It returns -EIO if MMU is disabled and -ENXIO if no HAB device
is available.

Signed-off-by: Denis Osterland <Denis.Osterland@diehl.com>
---
v1 -> v2: use runtime if, as suggested by Andrey Smirnov,
          add hab_get_status to have hab implementation
          selection at a central place

 commands/hab.c |  3 +++
 include/hab.h  | 15 +++++++++++++++
 2 files changed, 18 insertions(+)

diff --git a/commands/hab.c b/commands/hab.c
index 0d7ee8e76..af51e73fc 100644
--- a/commands/hab.c
+++ b/commands/hab.c
@@ -72,6 +72,9 @@ static int do_hab(int argc, char *argv[])
 		else
 			printf("devel mode\n");
 =

+		if (hab_get_status() =3D=3D -EIO)
+			printf("Disable MMU to access HAB API!\n");
+
 		return 0;
 	}
 =

diff --git a/include/hab.h b/include/hab.h
index 78c2b865b..7c2ffab5e 100644
--- a/include/hab.h
+++ b/include/hab.h
@@ -19,6 +19,7 @@
 #define __HABV4_H
 =

 #include <errno.h>
+#include <mach/generic.h>
 =

 #ifdef CONFIG_HABV4
 int imx28_hab_get_status(void);
@@ -43,6 +44,20 @@ static inline int imx25_hab_get_status(void)
 }
 #endif
 =

+static inline int hab_get_status(void)
+{
+	if (IS_ENABLED(CONFIG_MMU))
+		return -EIO;
+	else if (cpu_is_mx6())
+		return imx6_hab_get_status();
+	else if (cpu_is_mx28())
+		return imx28_hab_get_status();
+	else if (cpu_is_mx25())
+		return imx25_hab_get_status();
+	else
+		return -ENXIO;
+}
+
 #define SRK_HASH_SIZE	32
 =

 /* Force writing of key, even when a key is already written */
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
