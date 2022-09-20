Delivery-date: Tue, 20 Sep 2022 10:23:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaYXf-00AK9p-Ab
	for lore@lore.pengutronix.de; Tue, 20 Sep 2022 10:23:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaYXd-0003BV-UU
	for lore@pengutronix.de; Tue, 20 Sep 2022 10:23:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ge+3sc8P0q+63t+vAoTfDypz6R/tsQeoPZrztphtsOs=; b=1++t38rxse7h5834vooFYsCjQv
	WTiuu5K1pGo8UL1uOtu6YeW4tSIDF5Lzm3q5btSQrDk+2dXvFuQPfAXksPtmiRZKxmogstJn4+KEv
	tv7t/Pz1YtxGRbcn/0pyHToixvWEdTBQu2OSnsMgUVTmZC+/5syEFAqkNr9p41lauMtXciXPc1ufV
	2hhBcpsT2LVnfv9D3Omtnhq8jk85rvcHVSc4fi0ocDf+gIrhfW40YMw8CyK3mnjxT0ohQJtFEPMy+
	l9nlclBVgUu6ht8GVDFlIv3doytoxHueMLzEkYiWr7IJyqGaKPgaIHSFpu1m+DKyQbAWLR72Eduo5
	rEiagQ/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaYWA-001l55-2P; Tue, 20 Sep 2022 08:22:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaYW3-001l2l-Rz
	for barebox@lists.infradead.org; Tue, 20 Sep 2022 08:22:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oaYW1-0002tl-UD; Tue, 20 Sep 2022 10:22:01 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oaYW1-0000jp-LR; Tue, 20 Sep 2022 10:22:01 +0200
Date: Tue, 20 Sep 2022 10:22:01 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20220920082201.ghopbp75jw3hcfsv@pengutronix.de>
References: <20220916124942.3751131-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220916124942.3751131-1-s.hauer@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_012203_926598_8A6B7CF4 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: Bring up all interfaces before going interactive
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On 22-09-16, Sascha Hauer wrote:
> So far we only bring up network interfaces when we actually need them.
> This means we could be idling in the shell for long and once the user
> decides to do networking he has to wait for the link to be established.
> We can do better: Before going interactive bring up all known network
> interfaces which makes the links established when the user needs them.

can we do that conditional e.g. by using a globalvar? Since this can
cause regression e.g. if your use-case is to boot as fast as possible.

Regards,
  Marco


