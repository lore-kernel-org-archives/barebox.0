Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c1qNu-00012k-3b
 for barebox@lists.infradead.org; Wed, 02 Nov 2016 07:54:59 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id A20F2A00419
 for <barebox@lists.infradead.org>; Wed,  2 Nov 2016 08:55:04 +0100 (CET)
From: Stefan Lengfeld <s.lengfeld@phytec.de>
Date: Wed, 2 Nov 2016 08:54:28 +0100
Message-Id: <1478073270-3527-2-git-send-email-s.lengfeld@phytec.de>
In-Reply-To: <1478073270-3527-1-git-send-email-s.lengfeld@phytec.de>
References: <1478073270-3527-1-git-send-email-s.lengfeld@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH upstream 2/4] state: fix indentation
To: barebox@lists.infradead.org

Signed-off-by: Stefan Lengfeld <s.lengfeld@phytec.de>
---
 common/state/state_variables.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/common/state/state_variables.c b/common/state/state_variables.c
index efc2456..1e37856 100644
--- a/common/state/state_variables.c
+++ b/common/state/state_variables.c
@@ -441,9 +441,9 @@ static struct variable_type types[] = {
 	{
 		.type = STATE_TYPE_U8,
 		.type_name = "uint8",
-		 .export = state_uint32_export,
-		 .import = state_uint32_import,
-		 .create = state_uint8_create,
+		.export = state_uint32_export,
+		.import = state_uint32_import,
+		.create = state_uint8_create,
 	}, {
 		.type = STATE_TYPE_U32,
 		.type_name = "uint32",
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
