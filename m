Delivery-date: Tue, 25 Jan 2022 15:18:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nCMe9-00CuDT-6M
	for lore@lore.pengutronix.de; Tue, 25 Jan 2022 15:18:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nCMe7-00063z-RT
	for lore@pengutronix.de; Tue, 25 Jan 2022 15:18:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PHRXnjeQXqB2K7Fcc3tgTN1bT1nJfhSOxDkhOsNHDIg=; b=VADaiVzvzxlqG5PAI1UsmlaBqD
	utoH2DLT2yPlX6z/9l8QNDA5u2xKkazxhWfUsFZnZ+B+fDQ9+TRcRkig/Wla42TEGKIMK5j9Qo8mN
	BJ6Tvr3amPTvkn7ssiYJLc2rWsJBgsIpB+YdMagWNzTGA0W+gdMXFDrYvzbd9IXiyLclYZ1ejOckf
	0NUCTlPX0CEhAjYfymObtRPFE6wXcch6O1nya874N9S/GdOm3VDxOsIgFOrZG47F3rq7Y6a84gNd/
	wHhUu+682uQkhBuuknbc+E5B6CUo/IwO8zqaHTBZxXkXrBV6Hk17fkikbGrAEO6W2wKOgYCjgGyuy
	0SO+G3qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCMcd-00856Y-3y; Tue, 25 Jan 2022 14:16:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCMcU-00854R-KI
 for barebox@lists.infradead.org; Tue, 25 Jan 2022 14:16:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nCMcR-0005lZ-Gn; Tue, 25 Jan 2022 15:16:23 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nCMcQ-0002BW-Vw; Tue, 25 Jan 2022 15:16:22 +0100
Date: Tue, 25 Jan 2022 15:16:22 +0100
To: Frank Wunderlich <frank-w@public-files.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220125141622.GC23490@pengutronix.de>
References: <trinity-82a62e55-a3b0-43a3-8656-8a983119c309-1642931916783@3c-app-gmx-bs30>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <trinity-82a62e55-a3b0-43a3-8656-8a983119c309-1642931916783@3c-app-gmx-bs30>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:28:51 up 45 days, 22:14, 87 users,  load average: 0.25, 0.23, 0.25
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220125_061626_688184_90069E24 
X-CRM114-Status: GOOD (  25.40  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: use string as variable name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Frank,

On Sun, Jan 23, 2022 at 10:58:36AM +0100, Frank Wunderlich wrote:
> Hi,
> 
> is it possible to use a string as variable-name?
> 
> example:
> 
> i=1
> img_$i=foo
> 
> now i have defined $img_1, but how to display it using $i again?
> 
> echo ${img_$i}
> echo ${img_${i}}
> 
> alternative may be a variable-array, but it seems not possible
> 
> img[$i]=bar
> img[1]=bar: No such file or directory
> 
> i just want to create a dynamic list and access the items of this list by index
> 
> another way may be appending new string with separator to existing string and split afterwards,
> but then i have the index-problem again.
> 
> i know barebox shell is limited (but much more mighty than expected for just a bootloader),
> but maybe it is possible :)

Nah, you're kidding, the barebox shell is not limited ;)

#!/bin/sh

list="foo bar baz"

index=$1

i=0
for elem in $list; do
        let i=$i+1
        if [ "$i" = "$index" ]; then
                result="$elem"
        fi
done

echo result: $result

Regards,
  Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

