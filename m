Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0gwF-0004KI-S5
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 06:51:19 +0000
Received: from geraet.fritz.box (39-236-142-46.pool.kielnet.net
 [46.142.236.39]) (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 4B7791C000C
 for <barebox@lists.infradead.org>; Thu, 22 Aug 2019 06:51:14 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 22 Aug 2019 08:51:02 +0200
Message-Id: <20190822065102.22024-4-ahmad@a3f.at>
In-Reply-To: <20190822065102.22024-1-ahmad@a3f.at>
References: <20190822065102.22024-1-ahmad@a3f.at>
MIME-Version: 1.0
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
Subject: [PATCH RFC 3/3] fs: tftp: don't maintain tftp dentries in dcache
To: barebox@lists.infradead.org

Currently a negative dentry is cached whenever a non-existing file was
looked up over TFTP. Short of a barebox reset, there is no way to
invalidate that dentry, so barebox retries the look up.

Fix this by always reporting TFTP dentries as invalid in the d_revalidate
callback.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 fs/tftp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/tftp.c b/fs/tftp.c
index 54dcba272fb8..1f36c56511ac 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -715,6 +715,7 @@ static int tftp_probe(struct device_d *dev)
 	}
 
 	sb->s_op = &tftp_ops;
+	sb->s_d_op = &no_revalidate_d_ops;
 
 	inode = tftp_get_inode(sb, NULL, S_IFDIR);
 	sb->s_root = d_make_root(inode);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
