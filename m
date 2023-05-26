Delivery-date: Fri, 26 May 2023 13:45:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2Vsf-00F1LJ-UF
	for lore@lore.pengutronix.de; Fri, 26 May 2023 13:45:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2Vsd-0007pz-KA
	for lore@pengutronix.de; Fri, 26 May 2023 13:45:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HfZ+ODM1cZJTNkjcTIMD7J7aY5KxJTFk3V4vEwE7Lf0=; b=AOSyvZR5txqmGMULW+Z0pr02O8
	A6dWJKbzqOTVAj4DPMsQyiqUHU9/p3pRy78JIeGklM54S2ZLTZy+TB7IheWharC6g/difBkvl+oMs
	D2IMOlHVGx83Iu9iKnH0bb5GQjWQQ3it/qRXVljplLMuyO/73FLi+jiFhu3da2KO6u2+Ws10Hb4X3
	6iyKlrXMIQMnngA+sH5qN3HmhF9MSWGyYaSRaCjNgyNP+q34L8WhLkNpqaxK1Jm6HPplURUEK/1UN
	NZZDl3qQheNs4O7wYE98JTxns+4KZqtQsdNd02vujXDy1s3T1+xctNtBXUcKFsM+XYV90m/VpmvaT
	Eh6keNjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2Vrx-002Lmf-0K;
	Fri, 26 May 2023 11:44:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2Vru-002LlL-2C
	for barebox@lists.infradead.org;
	Fri, 26 May 2023 11:44:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q2Vrs-0007hZ-MB; Fri, 26 May 2023 13:44:24 +0200
Message-ID: <8855e8e3-cd26-f3cf-ca1f-0af8fd0ed0dc@pengutronix.de>
Date: Fri, 26 May 2023 13:44:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: marc@cpdesign.com.au, barebox@lists.infradead.org
References: <10297393.nUPlyArG6x@dev8>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <10297393.nUPlyArG6x@dev8>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230526_044426_721050_C00626D9 
X-CRM114-Status: GOOD (  11.68  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Troubles booting kernel with new imx8 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 26.05.23 12:46, marc@cpdesign.com.au wrote:
> - boots kernel ok using u-boot (u-boot version provided by solidrun, based on 
> NXP versions)

As Sascha said, logs would be useful. Two more questions:

- Are you using the mainline kernel or NXP's fork?
- Do you have an i.MX8MP or some stripped down variant?

Cheers,
Ahmad

> - I used the same ddr timings from u-boot
> - also using same versions of firmware-imx (8.16) and ATF (2.8)
> 
> Cheers
> Marc
> 
> 
> 
> 
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



