Delivery-date: Tue, 24 Jan 2023 14:08:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKJ2J-000Umf-AC
	for lore@lore.pengutronix.de; Tue, 24 Jan 2023 14:08:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKJ2A-0000E5-Fk
	for lore@pengutronix.de; Tue, 24 Jan 2023 14:08:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4rOzYVqROwqLrQ7nU9ELoUhUyTJMKGzgxls42zKbePY=; b=Gh25frnFSsT6g2WeNU+hGj5VKU
	Y+npL71CruDBnZy+JJjG1xy8SrM6q52woisTFqx7bSAPAsI1mRPGMBjNYf9nurGHFPD69Hq+fulX2
	fPuAlnIAEMnDtQSU52RWCCqf2wq5yJTgCOW4YTYNaPWEsqme6BpKSSkwb1UoP0v2oyb+jpdQJu+4t
	C3tIXUyRlvCZE1GQhK1DSr+TDsAb9z33vCxf7DoyGz/7oEKwD50YdRTZZ/9IeQfbPetgOQ6z0/yK4
	wlz4r684AAYsuL1ytxw2DAf7WwePZxXUrth1zZG4zYlOJY5mdsOMWNCJI1fo0FKNN+o5+cJnsgiHu
	OL3ywQ7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKJ0Z-003r3B-4J; Tue, 24 Jan 2023 13:06:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKIxI-003pZ1-25
	for barebox@bombadil.infradead.org; Tue, 24 Jan 2023 13:03:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=4rOzYVqROwqLrQ7nU9ELoUhUyTJMKGzgxls42zKbePY=; b=IgI9h57wLTg2Al0QEa4j9OvDAy
	cKe6DO+z1/UnPCrVq96k6kqhf2kqLrhNo49s3iGRkL8Aq6z0cIK2w/yD99dudYytaMolTKoA0Xmc2
	9iWPUHXdW2Bqro0khrxr7ZU8M/Py9FEgS+fld/VCHi8ZgeDs0q6I9tFflz3FumIhRe/3msIofAtpS
	1AOc/+r3gd19vouRNV91cbv4aTrBvQNEBsnN2Le3B3HHo8fqzwt3CFI4Mv2CRApcsbQZu7rCpO0Kk
	NG/P4b/niNy4fJkzte1zFEcKpnULxPwihDLR23aBA4oFH5tKTmK8/q/S8FYRyrl+c4CVhdNCTy/Rr
	65XxaWSg==;
Received: from out2.migadu.com ([2001:41d0:2:aacc::])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pKHpQ-001pU4-0P
	for barebox@lists.infradead.org;
	Tue, 24 Jan 2023 11:51:06 +0000
Date: Tue, 24 Jan 2023 22:48:48 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674561092;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=4rOzYVqROwqLrQ7nU9ELoUhUyTJMKGzgxls42zKbePY=;
	b=Gbn8k3zc8ztAbBl2zcHqdzG0jG3Fzv7r32YXXEe98Sc6S8nWvPLtsn8YWNBDADiDAkJH7u
	FZodkCgda9i5PCOCBa0c7ZQb+cdtT7PcncD80IfvewttXTcbKF7j7QEI4bcXTA6PDMh4Kr
	8xE/kZruVPfA8j5Q2tWJZTnIIO+Tl+cadInxHgLjL9iKo1QE6kg220eSGZK7ch8wH+KqOQ
	csc1vs7IDKHooIi/ySINP07Mca9iX+vi3sEhJWkqW7ODyNKptjDNpkI0+BkEmDwnXcwqQd
	62lVKdTf2t0bB/Br0ie9Pm13Jf7sjC705JkV6bGRMqkdmRgCopx4aGR9yii1mw==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Y8/FoBvkO/Xb63CH@novena-choice-citizen>
References: <20230121144429.3524905-1-contact@jookia.org>
 <20230124082625.GU24755@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230124082625.GU24755@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_115104_487024_D30E9364 
X-CRM114-Status: UNSURE (   7.50  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/7] Support generating DIMM parameters on more systems
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jan 24, 2023 at 09:26:26AM +0100, Sascha Hauer wrote:
> Applied, thanks.
> 
> I added a sentence to the commit message of 1/7.
> 
> Sascha

Thanks! :)


