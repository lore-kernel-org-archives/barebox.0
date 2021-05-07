Delivery-date: Fri, 07 May 2021 10:42:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lew3z-00048X-4v
	for lore@lore.pengutronix.de; Fri, 07 May 2021 10:42:23 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lew3y-0004T0-3B
	for lore@pengutronix.de; Fri, 07 May 2021 10:42:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+Br5Fvy4QDzfYCTQ02RVP/OJEeonOqsC7s2VmsY22+w=; b=rOKWXObL/KP9xXqu+jQvSTOky
	axREQXVJYR0zJYNYDx+mgDcccG/N662ePo2UzG51tfFsha/6HQonHoGSyZ7rB+IS1WW9VqTexuwH+
	cmDd2LnH35t/24fnkXfAbtpS8vdMgw/rY70yQvEZ9oKGlkhd1KWBCn6Ak2gFqkfgv74ezIazLUL+D
	eloDBL5h3CX/DJehl0oJRlBDrqYMjhBPYHkaO/7IJ+ekOa6qs9YIJrF7t6/XBdW0NecLaCOdveXir
	rcRPyLRjZvRZBrJdsdTpPut3RMoARKsHEW2DAOVMf1NcfmRTjT7RAIc/OqTAo4rKJvvPDD+E82vJ3
	HsI4boEUA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lew2r-006WHk-7Z; Fri, 07 May 2021 08:41:13 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lew2m-006WHZ-U2
 for barebox@desiato.infradead.org; Fri, 07 May 2021 08:41:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=jv2nZCLMxh08ou/ALkvU7KHIGX+eZ08PihLA/BFAcrg=; b=yjKao2KGmD/noaSmQA3c6KtqRn
 8wMghVTe2o6aAtfqcBWqWrOlhb+1VzPhVDANfYpRlBFvmbOEzSblxkBWclTsTm4Bm13AtU7bQpRn0
 U2fjFkKgMVtG3wwy+lrJJZMwdcNQDPfjd92zMr9t0PKnDwE4+Xbs/8iwQuiECUeJhVAMNCx/VzLtE
 Q0A0J3+dkGU4re8I6oa7k1Ez10TSoBhOlDCw6rzmaJUiLTt9nOJggEc1oreS/Jr5AK1kId/YlZ55a
 r89Icm24GVqJKMcVBN9qoOUbtlo8J+fbZ+AjzegDBl/hDWuTDSPdRhAC+c58YSkB9UM1zLsNekmmr
 4LFSvF1Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lew2j-006hbb-Su
 for barebox@lists.infradead.org; Fri, 07 May 2021 08:41:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lew2h-0004IK-Gm; Fri, 07 May 2021 10:41:03 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lew2g-0004I1-T8; Fri, 07 May 2021 10:41:02 +0200
Date: Fri, 7 May 2021 10:41:02 +0200
To: Neeraj Pal <neerajpal09@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20210507084102.GU19819@pengutronix.de>
References: <CANi4_RUhZuWvG+v9R1Ae5BmCtHx-Bz_4Ay0BiuBYCrqXUAOBiw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANi4_RUhZuWvG+v9R1Ae5BmCtHx-Bz_4Ay0BiuBYCrqXUAOBiw@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:38:43 up 78 days, 12:02, 96 users,  load average: 0.20, 0.14, 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_014105_958627_0B9981A0 
X-CRM114-Status: GOOD (  26.14  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [BUG] Stack buffer overflow WRITE of size 1 in nfs_start function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On Sun, Apr 18, 2021 at 12:22:30AM +0530, Neeraj Pal wrote:
> Hi,
> 
> While reviewing the code of barebox-2021.04.0 and git commit
> af0f068a6edad45b033e772056ac0352e1ba3613  I found a stack buffer
> overflow WRITE of size 1 in
> nfs_start() net/nfs.c L664 through strcpy call which furthers crashes at
> function strcpy in lib/string.c L96.

Thanks for reporting this. Indeed the nfs filename is stored in a fixed
size buffer which can easily overflow with the right input.

This patch should fix this issue.

Regards,
  Sascha

-----------------------------8<---------------------------------
>From 3978396bf88c4ab567ddf36dff1218502e32a94d Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 7 May 2021 10:26:51 +0200
Subject: [PATCH] nfs command: Fix possible buffer overflow

the nfs command stores the nfs filename in a fixed size buffer without
checking its length. Instead of using a static buffer use strdup() to
dynamically allocate a suitably sized buffer.

Reported-by: Neeraj Pal <neerajpal09@gmail.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/nfs.c | 41 ++++++++++++++++++++++++++++++-----------
 1 file changed, 30 insertions(+), 11 deletions(-)

diff --git a/net/nfs.c b/net/nfs.c
index 591417e0de..440e410a83 100644
--- a/net/nfs.c
+++ b/net/nfs.c
@@ -148,7 +148,6 @@ static int	nfs_state;
 
 static char *nfs_filename;
 static char *nfs_path;
-static char nfs_path_buff[2048];
 
 static int net_store_fd;
 static struct net_connection *nfs_con;
@@ -522,11 +521,26 @@ static int nfs_readlink_reply(unsigned char *pkt, unsigned len)
 	path = (char *)data;
 
 	if (*path != '/') {
-		strcat(nfs_path, "/");
-		strncat(nfs_path, path, rlen);
+		char *n;
+
+		n = calloc(strlen(nfs_path) + sizeof('/') + rlen + 1, 1);
+		if (!n)
+			return -ENOMEM;
+
+		strcpy(n, nfs_path);
+		strcat(n, "/");
+		strncat(n, path, rlen);
+
+		free(nfs_path);
+		nfs_path = n;
 	} else {
+		free(nfs_path);
+
+		nfs_path = calloc(rlen + 1, 1);
+		if (!nfs_path)
+			return -ENOMEM;
+
 		memcpy(nfs_path, path, rlen);
-		nfs_path[rlen] = 0;
 	}
 	return 0;
 }
@@ -655,13 +669,13 @@ err_out:
 	nfs_err = ret;
 }
 
-static void nfs_start(char *p)
+static int nfs_start(char *p)
 {
 	debug("%s\n", __func__);
 
-	nfs_path = (char *)nfs_path_buff;
-
-	strcpy(nfs_path, p);
+	nfs_path = strdup(p);
+	if (nfs_path)
+		return -ENOMEM;
 
 	nfs_filename = basename (nfs_path);
 	nfs_path     = dirname (nfs_path);
@@ -671,6 +685,8 @@ static void nfs_start(char *p)
 	nfs_state = STATE_PRCLOOKUP_PROG_MOUNT_REQ;
 
 	nfs_send();
+
+	return 0;
 }
 
 static int do_nfs(int argc, char *argv[])
@@ -701,9 +717,9 @@ static int do_nfs(int argc, char *argv[])
 	}
 	net_udp_bind(nfs_con, 1000);
 
-	nfs_err = 0;
-
-	nfs_start(remotefile);
+	nfs_err = nfs_start(remotefile);
+	if (nfs_err)
+		goto err_udp;
 
 	while (nfs_state != STATE_DONE) {
 		if (ctrlc()) {
@@ -727,6 +743,9 @@ err_udp:
 
 	printf("\n");
 
+	free(nfs_path);
+	nfs_path = NULL;
+
 	return nfs_err == 0 ? 0 : 1;
 }
 
-- 
2.29.2


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

