Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d6bVo-0005RM-W9
 for barebox@lists.infradead.org; Fri, 05 May 2017 11:35:07 +0000
Received: by mail-lf0-x241.google.com with SMTP id q70so319333lfi.0
 for <barebox@lists.infradead.org>; Fri, 05 May 2017 04:34:45 -0700 (PDT)
Received: from localhost.localdomain (t109.niisi.ras.ru. [193.232.173.109])
 by smtp.gmail.com with ESMTPSA id h14sm981892ljb.46.2017.05.05.04.34.42
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 05 May 2017 04:34:42 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  5 May 2017 14:34:34 +0300
Message-Id: <20170505113435.19928-5-antonynpavlov@gmail.com>
In-Reply-To: <20170505113435.19928-1-antonynpavlov@gmail.com>
References: <20170505113435.19928-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 4/5] MIPS: barebox.lds.S: put .text_entry contents after
 _stext and _text
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/lib/barebox.lds.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
index cc214920e3..899f62b968 100644
--- a/arch/mips/lib/barebox.lds.S
+++ b/arch/mips/lib/barebox.lds.S
@@ -27,9 +27,9 @@ SECTIONS
 	. = ALIGN(4);
 	.text      :
 	{
-		*(.text_entry*)
 		_stext = .;
 		_text = .;
+		*(.text_entry*)
 		__bare_init_start = .;
 		*(.text_bare_init*)
 		__bare_init_end = .;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
