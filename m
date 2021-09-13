Delivery-date: Mon, 13 Sep 2021 12:10:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPiv6-0008QF-Bj
	for lore@lore.pengutronix.de; Mon, 13 Sep 2021 12:10:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPiv5-0007XM-Dj
	for lore@pengutronix.de; Mon, 13 Sep 2021 12:10:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F/oUdIIHx+wyTxBYaN8aYXSbZBVZdjwlDKpDuOoM2mw=; b=CCwYxkCYMNMvOB
	oHuOq4b4GAd4ixw/2BhGlySU7CWKGIoYf3wanh8LEqYiNZ60NB6diZBpxdN1m6IasD6qJzaAZgEQa
	pdHbU0eVhfRo+2NTTjzPnj8h5I/L6pR+jst6++88EEjO4Kr5O/NH7SVRbJ6lCfF1MWaztUvryRU12
	95o7Xd+hpN4uBVICame4NyAGJ8Dp3rWdIR8LO57KC6W6Eh+ewVxr/w5r0fkBc/8Q9+o0HNQ2Er8h+
	saBVbk6hnBbMvivNkmQccStshtNjYeGw0Mny46KxtPUrfAMa2PYt0Q6uCSKMvEWYTplKFh0lHfUgI
	j9lYekv7kSuEToOVp5cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPitU-001DR3-Kv; Mon, 13 Sep 2021 10:08:56 +0000
Received: from mxout.security-mail.net ([85.31.212.42]
 helo=fx302.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPitO-001DPf-Ny
 for barebox@lists.infradead.org; Mon, 13 Sep 2021 10:08:52 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx302.security-mail.net (Postfix) with ESMTP id AC9A63D3B290
 for <barebox@lists.infradead.org>; Mon, 13 Sep 2021 12:08:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1631527718;
 bh=/dDcirR+wSGUsRP78a+4oMPiWnZHRMAuKSoOpV331Qc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=PWUmWYckzqVK+60mn+0/WcCEmEWBnRy5REfDXFK6dqFlCqicJX5fximZY3G1kfzPS
 iYqsYEJt8NRYO0pMSeVsZM0DiUA44cLTl879bmVekKNNaceb0KjH+qaRo/F8R5Eppg
 tOtD4WS5+TQPJ90LcbvFy0O3Xy8dJzF48dbkUL8c=
Received: from fx302 (localhost [127.0.0.1]) by fx302.security-mail.net
 (Postfix) with ESMTP id 528DA3D3B248; Mon, 13 Sep 2021 12:08:38 +0200 (CEST)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53]) by
 fx302.security-mail.net (Postfix) with ESMTPS id BDBCE3D3B222; Mon, 13 Sep
 2021 12:08:37 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1]) by
 zimbra2.kalray.eu (Postfix) with ESMTPS id A374F27E022E; Mon, 13 Sep 2021
 12:08:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1]) by zimbra2.kalray.eu
 (Postfix) with ESMTP id 8CF7C27E02EB; Mon, 13 Sep 2021 12:08:37 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1]) by localhost
 (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026) with ESMTP id
 dS8ijw6Tgz5E; Mon, 13 Sep 2021 12:08:37 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206]) by
 zimbra2.kalray.eu (Postfix) with ESMTPSA id 7D9E527E022E; Mon, 13 Sep 2021
 12:08:37 +0200 (CEST)
X-Virus-Scanned: E-securemail, by Secumail
Secumail-id: <122c7.613f2325.b85ee.0>
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 8CF7C27E02EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1631527717;
 bh=0OXyH+Lm7UmYcjkRhdSeXwreN1SN32aoBsEJkJv0P1M=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=XCKwsFDob596SnqCEovG5EI6c22/H5lRgS8EWOseXCCMA5OMo3QqflZ4PWmzpjPJQ
 QcymeRTF+35oWB9hwTjRMfaBydwtk97yymgnZ1ZYuJxoFE1a9fTqw4PxP4+6FJxQEd
 aCS2czudhp3qLVn6BmJB6q1vEpEAK6Lq5vfnH6mI=
Date: Mon, 13 Sep 2021 12:08:36 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20210913100836.GD8023@tellis.lin.mbt.kalray.eu>
References: <20210913082942.364324-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210913082942.364324-1-ahmad@a3f.at>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_030851_163573_0DA6221D 
X-CRM114-Status: GOOD (  18.58  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] base: driver: fix double removal of child devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On Mon, Sep 13, 2021 at 10:29:42AM +0200, Ahmad Fatoum wrote:
> Child devices like an ext4 file system on a partition may be removed
> twice: Once because they're in the active devices list and then once
> more, because unregister_device is called for the children of its parent.
> 
> As struct bus_type::remove clears association of a driver with its
> device, we can set struct device_d::driver to NULL. unregister_device
> will then skip the second dev->bus->remove.
> 
> Fixes: 29f1c211d86c ("fs: don't free device in remove callback")
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/base/driver.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> index 0e04ef36868d..0fedb30161b4 100644
> --- a/drivers/base/driver.c
> +++ b/drivers/base/driver.c
> @@ -512,7 +512,10 @@ static void devices_shutdown(void)
>  
>  	list_for_each_entry(dev, &active, active) {
>  		if (dev->bus->remove)
> +		if (dev->bus->remove) {
I think there is a typo here, this line is duplicated.

>  			dev->bus->remove(dev);
> +			dev->driver = NULL;
> +		}
>  	}
>  }
>  devshutdown_exitcall(devices_shutdown);
> -- 
> 2.33.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 
> 





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

