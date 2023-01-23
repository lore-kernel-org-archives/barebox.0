Delivery-date: Mon, 23 Jan 2023 10:57:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJta9-00306O-SH
	for lore@lore.pengutronix.de; Mon, 23 Jan 2023 10:57:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJta7-0005MY-Vs
	for lore@pengutronix.de; Mon, 23 Jan 2023 10:57:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=htPvijksKvd0livK5QYk17djm4cQyFSQZKQRxJvtGpo=; b=wjudxB2we9S00JIFCAJ4D4hp8Q
	J0714NirPm5KOTMoSnItyrGNCcapVw9qPCBIEtKdCPyL0opH8+VTTbhOXrHf/fw5NoMS1MLewo2Dk
	3hChUKVEbMxEkcjHzeGtYh/VRaqM9h+fswSPYkI81VdXgNMAnk0HN4TxqEkYcyZOBKOmL9GV/yWHS
	DEpiPZz0osUOupaPe6GnnbNNOUvsW4gzrO8sDzAl6aF0zES+7CFoSubfeKT0/A8iugkyggIzV6Shc
	b1UQ1xdN6JcNg1CBlpEt3fjZjxXIrgYMy5KeKlwlDX4m5dOwOKAiiqvcQYOOnIpwxAKY6saPDIso7
	1K5qQHlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJtYv-00Gbf6-FW; Mon, 23 Jan 2023 09:56:25 +0000
Received: from out2.migadu.com ([2001:41d0:2:aacc::])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJtYr-00Gbdb-Ef
	for barebox@lists.infradead.org; Mon, 23 Jan 2023 09:56:22 +0000
Date: Mon, 23 Jan 2023 20:55:02 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674467775;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=htPvijksKvd0livK5QYk17djm4cQyFSQZKQRxJvtGpo=;
	b=iY1W+kDsS1HL6ykek2jQyqjN8sLeIE+BvqTWgEaKC7f+S3IIKIZd3lG5S89gjzMg4IFXxp
	9OQmVzg+ut3yQllm/RWakbmJ/Z5NHd4m7SDK4Dqxhf9/7PwAnI7puhgYRFZpPW0h/b3Dl4
	KTnvoAJvse29oTA578s5MtxlD0qzvXHKphTc18EIQM5z96q97Lv/u1Lw6RIVOsQ6ji6X6t
	JyXQHGbSb7E7OKOpbCJ0ANzNHNEEZVAreKTohb3LLWkARDPw8wvi15dQ8DiezEwwWnvqWT
	LMMNUfVUHL3+E/8ixy7KNW6gt4FF9wVsO8ZaA+xV43OQtVyoZFMyXzz2aorjKA==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Y85Zdop3S427g/DK@novena-choice-citizen>
References: <20230122175141.119834-1-contact@jookia.org>
 <20230122175141.119834-5-contact@jookia.org>
 <20230123093305.GS24755@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230123093305.GS24755@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_015621_672323_927FAE29 
X-CRM114-Status: GOOD (  15.48  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/5] ARM: novena: Read Ethernet MAC address from EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 23, 2023 at 10:33:05AM +0100, Sascha Hauer wrote:
> > +static struct novena_eeprom *novena_read_eeprom(void)
> > +{
> > +	size_t read;
> > +	loff_t max = sizeof(struct novena_eeprom);
> > +	void *eeprom;
> > +
> > +	int rc = read_file_2("/dev/eeprom0", &read, &eeprom, max);
> 
> And here is the point where you have to request that the EEPROM is
> actually availabe to support the deep probe mechanism. Before reading
> the EEPROM add a call to:
> 
> 	of_device_ensure_probed_by_alias("eeprom0");
> 
> Nowadays the read-MAC-address-from-EEPROM thingy would likely be done
> using nvmem cells which would boil this code down to device tree changes
> only. If you're feeling brave you could change this, I won't insist on
> it though.
> 
> Sascha

That makes sense, I'll switch to the new board setup in V2.

Using nvmem cells would work better for this case, but in the future I will
need to read the EEPROM anyway to implement some features specific to the
laptop based on the features flag. I figured I'd get the EEPROM loading done
now rather than later, though if this is jumping the gun I can just change
it to an nvmem patch.

John


