Delivery-date: Wed, 12 May 2021 17:17:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lgqbn-00009m-Gz
	for lore@lore.pengutronix.de; Wed, 12 May 2021 17:17:11 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lgqbm-0005MJ-Ko
	for lore@pengutronix.de; Wed, 12 May 2021 17:17:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HfP0gFbYbW3shw6t6JGhS/icQyZPKP5dIo37OtTLF4Q=; b=p+67Epz0SkpcT8z1Ee6ln5HIr
	TkHQy6aF2nladnFxaUew153pgG9fr9NRYgn80SyOOfD6W6erhDgiWkN7nut9l1OIOjzRuZWcV5yhX
	Jl+HhXyjDk539LDnUzHE5RP0mBr7aaj7ZEpDtatS9GOkd4pcTjOuTh3pTMJBwyY2DTxmQO3xzmkle
	iUlkivkAgJzPnB6GB4IaMHnOqF8+Ks5YqHo8LaVOJrOAvEivVgF+gCoAHzqwKXsBC7h/YAT9F0E0j
	7opdVnjwzlmSvqRPFRVEsUdbAt1OgMdNLBs7xT9GStigUYDVDkf7V1VMYoPWBp92LdXSO48csxc50
	q2RdgipiA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgqai-0038yp-1T; Wed, 12 May 2021 15:16:04 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgqaZ-0038xt-OM
 for barebox@desiato.infradead.org; Wed, 12 May 2021 15:15:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=1X3+nUAlKre+2itktnOTulTX/oB3xETV8MN+vrtgCuQ=; b=qZVv+gP0tnkY/u4pXJ6X1sp2hi
 C7oE21nx+O/CrUiBdLo6LOrMxGyuoo6ZK4vgBMelcUaJiVGXbBorV5aw/p271Zksl5dR0TTiPwScr
 +ittNdxKCVCfta6ktTsRdhI561fmTQeBV4hpoqf88xkV7L6hVPSxMWhRRIuR/Q919JWgbPw05sBll
 6qG3rbMvf+OA98D/RVHXGkADv01VB5wDzVs915g2Z3VF6PdFVWqhKq7FHiGNNnz7DDYGVoL+Pt0v3
 yM1++lT9ZLbU1xuabORcEKXjAqpNjsS3HUmbgmI35GljkuAVjlPpcwUb5mCvVecKh0H5PD3VpG5Py
 4f+TtZkg==;
Received: from mib.mailinblack.com ([137.74.84.110])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgqaW-00AUwI-S5
 for barebox@lists.infradead.org; Wed, 12 May 2021 15:15:54 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 959921A1419
 for <barebox@lists.infradead.org>; Wed, 12 May 2021 15:15:49 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KOLLUN9Y;
 Wed, 12 May 2021 15:15:49 +0000 (UTC)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by mib.mailinblack.com (Postfix) with ESMTPS id 6A7D11A1416;
 Wed, 12 May 2021 15:15:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 3547F27E0AA7;
 Wed, 12 May 2021 17:15:49 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 27YLoqyf4Ud5; Wed, 12 May 2021 17:15:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id E56D827E0ABF;
 Wed, 12 May 2021 17:15:48 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu E56D827E0ABF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1620832548;
 bh=1X3+nUAlKre+2itktnOTulTX/oB3xETV8MN+vrtgCuQ=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=aZYBuuPHeeZBOOuPi1uhl/vMR6niCLBZNPBZinOY4AdQAkSuAVbWjO+vwFa6KGo2r
 8jZ1FT0Oli1e9zQ2sInRVtwvCAk0svtc8liwif/qnSOiz6OZ9YeRyhWwV/di7d1SH9
 y612/scBqT4VMAAOIB+vYkyklAzf6hvT8kQAnS3I=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id qOAjv_AR2a9K; Wed, 12 May 2021 17:15:48 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id D112F27E0AA7;
 Wed, 12 May 2021 17:15:48 +0200 (CEST)
Date: Wed, 12 May 2021 17:15:47 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Michael Olbrich <m.olbrich@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20210512151547.GB7003@tellis.lin.mbt.kalray.eu>
References: <20210512054440.2479-1-s.hauer@pengutronix.de>
 <20210512112514.GB13688@pengutronix.de>
 <20210512130430.GP19819@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210512130430.GP19819@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210512_081553_253813_9D262FBF 
X-CRM114-Status: GOOD (  10.15  )
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
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] readline_simple: Fix compiler warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

FYI,

On Wed, May 12, 2021 at 03:04:30PM +0200, Sascha Hauer wrote:
> On Wed, May 12, 2021 at 01:25:14PM +0200, Michael Olbrich wrote:
> > On Wed, May 12, 2021 at 07:44:40AM +0200, Sascha Hauer wrote:
> > > char is an unsigned type.
> > 
> > That's incorrect. In the C standard it is explicitly undefined whether char
> > is signed or unsigned. gcc implements this differently depending on the
> > architecture. I think ARM and x86 differ here.
> 
> Ok. I already reworded this to "char can be an unsigned type".
You can use "singed char" if you really need it.

    There are five standard signed integer types, designated as signed char,
    short int, int, long int, and long long int.

from ISO/IEC 9899:TC2 - 6.2.5 Types

Best,
Jules


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

