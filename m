Delivery-date: Mon, 13 Oct 2025 13:20:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8GbW-007Lye-20
	for lore@lore.pengutronix.de;
	Mon, 13 Oct 2025 13:20:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8GbW-0001lY-2f
	for lore@pengutronix.de; Mon, 13 Oct 2025 13:20:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6Ny7hWIk8Qud1gmSrAhNqfVMZnmvzjFx4vCSvNAuS6c=; b=LScnflXBJEtRa3eSbzREvj0I9Q
	Akc6Ff2gU2CXO/+qFqf/ccU1hr1PjfNSPIzJU1JnsZRaeyOXygOso2gPhdf8LyWwLmGisWlWBdFa1
	cYSIKeCkXfvLT+lJU9umjbEQPbEGmoa3Z57NHDw0YH3d/3C7u38yD5utCsaR+H6Pwx0vgAFT3msVw
	nSuQVrubRFLSKaWa54nbEVcPp4dgiRB/eejhxOR/cxuFzRQbSPY+KiZcBjOReXzCtp0z2wDOSF3Qi
	2fp668HPeKlSh9/fU5LV+y03k2/v1OpR5Q8Zv8osa7+A0YAh5PVM6Q8zBbjPKlzL4FEO+q3Q0g6ju
	HVYmLbdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Gb2-0000000D0f1-34Be;
	Mon, 13 Oct 2025 11:20:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Gb0-0000000D0ee-2A9q
	for barebox@lists.infradead.org;
	Mon, 13 Oct 2025 11:20:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v8Gay-0001fy-SC; Mon, 13 Oct 2025 13:20:04 +0200
Message-ID: <3122943d-cc66-492c-b1ec-85d43c45816c@pengutronix.de>
Date: Mon, 13 Oct 2025 13:20:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251001-fs-remove-dev-argument-v1-0-1922aaf65062@pengutronix.de>
 <20251001-fs-remove-dev-argument-v1-2-1922aaf65062@pengutronix.de>
Content-Language: en-US
From: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20251001-fs-remove-dev-argument-v1-2-1922aaf65062@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_042006_563065_7E69AF7B 
X-CRM114-Status: UNSURE (   9.02  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] fs: move fs_driver operations to struct
 file_operations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi

On 2025-10-01 10:06, Sascha Hauer wrote:
> The fs_driver operations really belong to struct file_operations. Move
> them there and clear a long standing TODO item.
> For the filesystems using the legacy layer move the file_operations to
> the legacy operations.

This patch (applied to next as ee6855706447) breaks CI: test/py/test_fit.py:

>       assert of_get_property(barebox, "/chosen/barebox-version") == f'"{ver}"', \
                "/chosen/barebox-version suggests we did not chainload"
E       AssertionError: /chosen/barebox-version suggests we did not chainload
E       assert False == '"barebox-2025.09.0-00109-gee6855706447"'
E        +  where False = of_get_property(BareboxDriver(target=Target(name='main', env=Environment(config_file='test/arm/virt@multi_v8_defconfig.yaml')), name=N...ebox@[^:]+:[^ ]+ ', autoboot='stop autoboot', interrupt='\n', bootstring='commandline:', password='', login_timeout=60), '/chosen/barebox-version')

test/py/test_fit.py:48: AssertionError

This is for all platforms supporting testfs.

This seems unrelated to CI failing on test_tlv as long as the CI container
hasn't been rebuilt with 9703b653fb09

Regards,
Jonas

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


