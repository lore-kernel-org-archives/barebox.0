Delivery-date: Thu, 27 Jul 2023 08:06:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOu90-00Bkq2-78
	for lore@lore.pengutronix.de; Thu, 27 Jul 2023 08:06:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOu8x-0006go-D2
	for lore@pengutronix.de; Thu, 27 Jul 2023 08:06:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pgMBNBxcOnO5EsYf0sDAZdDoYlRWGH/VyLJaIiaKuvQ=; b=ytnIuGzUMa4yV9tntPxPN6oIAg
	bDhlUnebJ9P/qAfRH8WKTX18hT7GuK4a6MY9t9Ikaijp2z9IfPGkp4DCEL0LHqMLfHPm23H1RxlLp
	3irN+OjWB920rPDqa4FQATcRQDukQFea4C0XkRMvXkrsgbxC/vVM7gosoME5gXXUaa2Zy6WTqSnfU
	toDLLBF81UXxSbn0kFa8vMbWGRsN37Bfj4h0cEZsbxZC/9YhUvOEV1qr9x9or2RWMsAG+vz+sOtMk
	hEFfAMN3VxW3lEhXed48PaMXLREasABtoOmL2LbioWz4TNudEMXx9bTFcXGu6SdBOlJTewY/3hBv8
	Y6gpgOmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOu80-00CHbe-1S;
	Thu, 27 Jul 2023 06:05:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOu7w-00CHaO-2d
	for barebox@lists.infradead.org;
	Thu, 27 Jul 2023 06:05:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qOu7v-0006TS-KJ; Thu, 27 Jul 2023 08:05:31 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qOu7v-00054L-DN; Thu, 27 Jul 2023 08:05:31 +0200
Date: Thu, 27 Jul 2023 08:05:31 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230727060531.hfsrhjgyt3qizy3k@pengutronix.de>
References: <20230726192718.911735-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230726192718.911735-1-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_230532_874307_3704586F 
X-CRM114-Status: UNSURE (   6.59  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] commands: hab: check for error in
 imx_hab_device_locked_down
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-07-26, Ahmad Fatoum wrote:
> imx_hab_device_locked_down() reads efuses and that operation can fail.
> Instead of assuming a failure means the efuses are non-zero, have the
> hab command explicitly check for negative error codes.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Feel free to add my r-b for the whole series.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>


