Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RSQlc-0004Bi-4c
 for barebox@lists.infradead.org; Mon, 21 Nov 2011 10:06:29 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 21 Nov 2011 11:05:30 +0100
References: <1321435467-19148-1-git-send-email-jbe@pengutronix.de>
 <1321435467-19148-9-git-send-email-jbe@pengutronix.de>
 <20111117161706.GN27267@pengutronix.de>
In-Reply-To: <20111117161706.GN27267@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201111211105.30369.jbe@pengutronix.de>
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
Subject: Re: [PATCH 08/13] DISK: Add common partition handling for disk like
 media
To: barebox@lists.infradead.org

What about this simple change? As we do always work sequential in barebox it
should work.

diff --git a/common/partitions.c b/common/partitions.c
index f3e0f6f..3ae1cf3 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -207,6 +207,8 @@ int parse_partition_table(struct block_device *blk)
 	int i;
 	int rc = 0;
 
+	pdesc.used_entries = 0;	/* (re-)start with an empty table */
+
 #ifdef CONFIG_PARTITION_DISK_DOS
 	if (pdesc.used_entries == 0)
 		try_dos_partition(blk);

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
