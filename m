Delivery-date: Tue, 02 Jul 2024 21:45:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOjRF-000wNh-1J
	for lore@lore.pengutronix.de;
	Tue, 02 Jul 2024 21:45:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOjRE-0002wp-Q8
	for lore@pengutronix.de; Tue, 02 Jul 2024 21:45:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LxboF6bNkv2x/I3/cDfHeGyshWZ3g14HUV3UNRkP1TA=; b=od3iz14nrxzvbV
	bxzWl6iepxzV3DEFKX7Nz5NqKAneWbwcTlDxPhDyWOzD7zGzxrvy3HIfwan3GVM5P/9jMVbEW9l4e
	XHSzFwcIAmZz6kanpu2eePI2Pr185jz2J3oL7am2SY4Y3VLhm99ZQUAziPAm+HaVypb6KdqMrTA9d
	6wp5S5cCXFvXZ0AXiTJhYjk/JwZl4MPz/Ei9Lx9h2icHNnayhN572CTGWzRIVRw5twZ3KZfg75f4l
	ghcRFnhL3P8ryOxIeXHw7Ix7Zf9eGOoySb8lqrYLefUVqJxI6FbHOhAOP4xk90l9+gN1aMurAJQLA
	5Edh48vcFpqhDfRUhD7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOjQe-00000007of8-2AYy;
	Tue, 02 Jul 2024 19:44:40 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOjQb-00000007oec-3Qwb
	for barebox@lists.infradead.org;
	Tue, 02 Jul 2024 19:44:39 +0000
Received: from localhost (localhost [127.0.0.1])
	by lithops.sigma-star.at (Postfix) with ESMTP id 3663C64943DE;
	Tue,  2 Jul 2024 21:44:33 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
	by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id AneQAEIwZnoY; Tue,  2 Jul 2024 21:44:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by lithops.sigma-star.at (Postfix) with ESMTP id DB99664943E1;
	Tue,  2 Jul 2024 21:44:32 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
	by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id mhAU7zSqeXW9; Tue,  2 Jul 2024 21:44:32 +0200 (CEST)
Received: from foxxylove.corp.sigma-star.at (unknown [82.150.214.1])
	by lithops.sigma-star.at (Postfix) with ESMTPSA id A322264943DE;
	Tue,  2 Jul 2024 21:44:32 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: barebox@lists.infradead.org
Date: Tue,  2 Jul 2024 21:44:27 +0200
Message-Id: <20240702194427.936-1-richard@nod.at>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240702_124438_027262_7D7CE0BF 
X-CRM114-Status: GOOD (  10.52  )
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
Cc: Richard Weinberger <richard@nod.at>, upstream+barebox@sigma-star.at
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ext4: Fix integer overflow in ext4fs_read_symlink()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While zalloc() takes a size_t type, adding 1 to the le32 variable
will overflow.
A carefully crafted ext4 filesystem can exhibit an inode size of 0xffffff=
ff
and as consequence zalloc() will do a zero allocation.

Later in the function the inode size is again used for copying data.
So an attacker can overwrite memory.

Avoid the overflow by using the __builtin_add_overflow() helper.

Signed-off-by: Richard Weinberger <richard@nod.at>
---
I have found and verified this bug in u-boot.
But Barebox uses the same code, so it is most likely affected too.

Thanks,
//richard
---
 fs/ext4/ext4_common.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/fs/ext4/ext4_common.c b/fs/ext4/ext4_common.c
index 4bfb55ad0d..a38593105f 100644
--- a/fs/ext4/ext4_common.c
+++ b/fs/ext4/ext4_common.c
@@ -369,13 +369,18 @@ char *ext4fs_read_symlink(struct ext2fs_node *node)
 	char *symlink;
 	struct ext2fs_node *diro =3D node;
 	int status, ret;
+	size_t alloc_size;
=20
 	if (!diro->inode_read) {
 		ret =3D ext4fs_read_inode(diro->data, diro->ino, &diro->inode);
 		if (ret)
 			return NULL;
 	}
-	symlink =3D zalloc(le32_to_cpu(diro->inode.size) + 1);
+
+	if (__builtin_add_overflow(le32_to_cpu(diro->inode.size), 1, &alloc_siz=
e))
+		return NULL;
+
+	symlink =3D zalloc(alloc_size);
 	if (!symlink)
 		return 0;
=20
--=20
2.35.3



