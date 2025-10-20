Delivery-date: Mon, 20 Oct 2025 14:59:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApU6-009tuU-1M
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 14:59:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTw-0001Kl-F4
	for lore@pengutronix.de; Mon, 20 Oct 2025 14:59:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AnT81YPdkqfdh46HHR9eqbsZLSIiYbOxPCOL48k8L2Q=; b=SZtYqvqL1w9usVQztX/8PcyMPp
	my44QPpxFoOe7sMDr+7nuoq1T8VRuQtxdtTiRV1LpvNoP5UzhrJmOWWDiGwdVkZlDg3pB8ljpEIrT
	uXVkx8YahG590TnFdMhI+b4MWzGtIR5mkzfaqrIPh9J6LwVXMib5KvzpX4vViXrgfD520NHYmdLzc
	62hM3AJc7FXgThVFV4YP1o8jZKxvJrBsbIKz3b4PIAYhZeKU5xqxVkB59pEcHivmOy8a3L+YX+3cO
	wtmEDcL++W2D2JXlCASmzTp+nPKz8immNYOQurRym7nS27018YlE5X8fRn0tTpwZMIoQiTUXce03U
	BVUYuYIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApT0-0000000DfiH-34XZ;
	Mon, 20 Oct 2025 12:58:26 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSp-0000000DfNw-0kE8
	for barebox@bombadil.infradead.org;
	Mon, 20 Oct 2025 12:58:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=AnT81YPdkqfdh46HHR9eqbsZLSIiYbOxPCOL48k8L2Q=; b=PsbDrV7fRkEeGuYiSAv9DYwpFk
	qGEBEDrthNaH8k1AIDWo0JZy/9W+BUd9+vWbYnPBNGjsL+8yCAkXpEnLaDA48vAgqjk8juYfC2F7S
	/q38VsjJ3AkXagEVvf/1s9m9gkctedTZ72YI7Eq+CG/vQOaMEUVuXtzScRPg+0ENXhSnHHHFd2pZ7
	TvmSjAUog6q0RZU2idWwNPX4dqJ2Nb4Mu2GYDTb4+aeOkd5npISX8LvwiTFsvqvd8ZkNnLU9spBvN
	YtqGOUHcKmTz3yQgYEX86fh7BEwZ8n6cC3J+BExaJ3AVsL9a2vhds0+4VLD5qwHFO/KzuVfgZBPrP
	4hgkgwxA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSi-00000007hdM-2DRx
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 12:58:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vApSd-0008Do-UU
	for barebox@lists.infradead.org; Mon, 20 Oct 2025 14:58:03 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vAmJ7-004WWl-37;
	Mon, 20 Oct 2025 11:36:01 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vAmJ7-007Hav-2o;
	Mon, 20 Oct 2025 11:36:01 +0200
Date: Mon, 20 Oct 2025 11:36:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aPYCgfi-oX6zQgY-@pengutronix.de>
References: <20251017-dmesg-v1-1-ac9c2fb021f6@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251017-dmesg-v1-1-ac9c2fb021f6@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_135809_850021_037F1F1F 
X-CRM114-Status: GOOD (  13.87  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: dmesg: clear logbuffer fully if not requested
 otherwise
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Oct 17, 2025 at 01:04:36PM +0200, Jonas Rebmann wrote:
> Previously, `dmesg -c` would clear the logbuffer except for the last 10
> lines. This comes with a fair amount of surprise given linux `dmesg -c`
> clears the whole logbuffer.
> 
> Clear the complete logbuffer given `dmesg -c` but with an optional
> argument `dmesg -c [<num>]` to keep <num> lines.
> 
> While at it, move the deleteion of log lines to the log_print function
> to prevent a corner case of lost log message if they arrive between the
> log_print() and log_clean() in dmesg.
> 
> If loglevels are selected using -l or -p in addition to cleaning being
> selected using -c, only clean those messages shown by the loglevel
> selection.

I find this behaviour rather surprising. The only useful thing I could
think of we can do with this is "Discard unimportant messages", but only
by printing them. It would be more useful if we had a -C (uppercase)
option to discard messages without printing them. But even with that,
there are many things we can do with this behaviour that are not useful
and only a few that are actually useful. We could delete for example all
"info" messages and keep the more and less important messages, but why
would we want to do this?

I think you should rather use the filter options -l and -p to limit the
output to the messages you are interested in and finally use -c to clear
the buffer.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


