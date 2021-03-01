Delivery-date: Mon, 01 Mar 2021 12:18:27 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGgZH-0004YW-40
	for lore@lore.pengutronix.de; Mon, 01 Mar 2021 12:18:27 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGgZG-0002a7-Dy
	for lore@pengutronix.de; Mon, 01 Mar 2021 12:18:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CzuD1E9pVM/NPeyAJnvcNzeVbSvljTtMZiSYhriVBlk=; b=VzBg0KbJPmNayonkz2rwgT+7P
	sSEoBt4e6z0Pt99epLHUwgyekU6T1Phaznw3HjTPnkBLutBAXLj9xu9L5T9nPOWaJlohpb8VHH7Tq
	CdwFdQZnU4d2iLk83kN3q+BL+T9zwzHUgfUmmtrA0BAvlycxqWONU1AMY7k/XBaSBt3Q/PiI5xSCc
	divPmS19gxxMX/niPeMWdUlTo7LZT0oIUnI3X2HhLX3bHl6RTZIEktGzI9lKPfKY4CoNZLB23qYlX
	SQGZjNHDzeWOQsFdz06HeDoQKugF21rpEjIOcA6JbXKTqWmTVPfFte5T468ZYIxhx+OMPh6xK+15D
	+5WgwAKxQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGgYA-0007re-Px; Mon, 01 Mar 2021 11:17:18 +0000
Received: from mib.mailinblack.com ([137.74.84.110])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGgY7-0007rJ-I0
 for barebox@lists.infradead.org; Mon, 01 Mar 2021 11:17:16 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id EE8E21A3008
 for <barebox@lists.infradead.org>; Mon,  1 Mar 2021 11:17:12 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KLQHMGHL;
 Mon, 01 Mar 2021 11:17:12 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id B7F9A1A3006;
 Mon,  1 Mar 2021 11:17:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 965BC27E083D;
 Mon,  1 Mar 2021 12:17:12 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id czlUDL4I3M2I; Mon,  1 Mar 2021 12:17:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 3898F27E0847;
 Mon,  1 Mar 2021 12:17:12 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 3898F27E0847
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1614597432;
 bh=TGuh788jS9vfqlavy4Ls0zgvc6kvwX7vzHjZHMtSUlM=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=OBpHnOPyaitIqGFzqVGN2wJQA2ej7gjLKkZIsWtHiEP0BdbTuT2L7XXgQ45omtyJV
 UpvNpQ6aAxwg8uI74y4dv8PP8pTklMdh2iJTCkCjCoEucljPNDkxTDySCY80exTseO
 BDo53tiQlHqEpdYlhkjm+6wBHx96n9HfndJbE87A=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id gpETOuu-aXw6; Mon,  1 Mar 2021 12:17:12 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 239A327E083D;
 Mon,  1 Mar 2021 12:17:12 +0100 (CET)
Date: Mon, 1 Mar 2021 12:17:07 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20210301111706.GA9273@tellis.lin.mbt.kalray.eu>
References: <20210223095902.GD5549@pengutronix.de>
 <7c538f1d-9cc4-c25c-0ccd-44831597c80e@kalray.eu>
 <20210225124500.GA365039@lianli.shorne-pla.net>
 <20210225130240.GA5081@tellis.lin.mbt.kalray.eu>
 <ba82e9ef-9d9a-179c-1688-a9aeb12413d3@pengutronix.de>
 <36fa4f92-6f5d-d24c-988c-e85c207864bb@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <36fa4f92-6f5d-d24c-988c-e85c207864bb@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_061715_814496_52ACF483 
X-CRM114-Status: GOOD (  10.13  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Yann Sionneau <ysionneau@kalray.eu>,
 Barebox List <barebox@lists.infradead.org>, Stafford Horne <shorne@gmail.com>,
 Sascha Hauer <sha@pengutronix.de>, shorne@opencores.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: nios2 and openrisc in barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On Mon, Mar 01, 2021 at 12:05:35PM +0100, Ahmad Fatoum wrote:
> Hello,
> 
> > Small request:
> >   If you implement initjmp, could you have it save into jmp_buf a frame
> >   pointer value of NULL if applicable? That way, should backtrace be
> >   implemented (or done via JTAG), they have a defined end.
> 
> Dismiss this last request. C code will just zero-initialize jmp_buf,
> so initjmp needs only fill out return address and stack pointer. I just
> sent out a series, which can be used to develop this one.
> 
> @Jules, any chance you could take over the kvx port? :-)
Yes, I've got a patch almost ready to be sent.

Jules 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

