Delivery-date: Tue, 14 Apr 2026 13:56:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCcNP-00C3yr-20
	for lore@lore.pengutronix.de;
	Tue, 14 Apr 2026 13:56:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCcNP-00026K-3O
	for lore@pengutronix.de; Tue, 14 Apr 2026 13:56:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2omIYB61JjwPBeI3VpLoCUI314gzc4AUgJ8WdnqdK9c=; b=trl4cTRYP6TmninclvQ0dQ44Uf
	ONLCJmRfz23ExwKCCbmECReI7jtr4yBLsniuCoQ0TYggbu/Q4rroerEaKX9m+zUPJDAkLSHcBc80l
	7FZ6qG7gwGIvDrRfVq17xCRZT+e9ryZeuhXaL+T8hXOeeM1vcaMaWWRy38EEOqUwGKHOG79EYdKu+
	aFeyrGoqsSo+npWOLuNNh2D9qyQ+cCnb3QjIC863MXvS6yAVK2H4qLSVrj3B+Xc6/aVH2T6Y3SDmM
	P+yFDjgz2gCEaAXlANgjnHwHTYn0tABl2/GshUa+E4S3f+RJRBmsNIkvzZnYrHW0khaHFCvXLG617
	zLaEkXKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCcMv-0000000HGZx-33n7;
	Tue, 14 Apr 2026 11:55:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCcMt-0000000HGZM-2Ym4
	for barebox@lists.infradead.org;
	Tue, 14 Apr 2026 11:55:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wCcMr-0001zU-OB; Tue, 14 Apr 2026 13:55:45 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wCcMr-005KjZ-00;
	Tue, 14 Apr 2026 13:55:45 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wCcMq-00000009Xck-3VcN;
	Tue, 14 Apr 2026 13:55:44 +0200
Date: Tue, 14 Apr 2026 13:55:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Renaud Barbier <Renaud.Barbier@ametek.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Barebox List <barebox@lists.infradead.org>
Message-ID: <ad4rQA7JE8L2FRxP@pengutronix.de>
References: <SJ0PR07MB976639CACF9AB10A471A2B96EC41A@SJ0PR07MB9766.namprd07.prod.outlook.com>
 <62cdd7a2-f712-44e9-8f3f-785a7af0e659@pengutronix.de>
 <SJ0PR07MB976610EF68958EB992C538E0EC41A@SJ0PR07MB9766.namprd07.prod.outlook.com>
 <SJ0PR07MB9766248C197842B57E33C98BEC49A@SJ0PR07MB9766.namprd07.prod.outlook.com>
 <SJ0PR07MB97666520BFA013C2CB794723EC53A@SJ0PR07MB9766.namprd07.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SJ0PR07MB97666520BFA013C2CB794723EC53A@SJ0PR07MB9766.namprd07.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_045547_670600_65FB0366 
X-CRM114-Status: GOOD (  12.91  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: file system crash
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Renaud,

On Tue, Mar 31, 2026 at 12:39:02PM +0000, Renaud Barbier wrote:
> I think I found where the problem is 
> 
> ERROR: free i_link bff2f840 <- This is from destroy_inode in fs/fs.c
> ERROR: ui->data = bff2f840 <- This is from ubifs_destroy_inode in fs/ubifs/super.c

Is it really ui->data that has the same value or rather ui itself?

ui itself would make sense, because first member of struct ubifs_inode
is a struct inode. ui->data OTOH should be something really different.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


