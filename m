Delivery-date: Mon, 21 Feb 2022 15:06:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nM9Ki-0062JC-1n
	for lore@lore.pengutronix.de; Mon, 21 Feb 2022 15:06:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nM9Kf-0003ZX-6P
	for lore@pengutronix.de; Mon, 21 Feb 2022 15:06:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MeDow8e9n/K/GwDQiN9rJSDgJbYJywe6buu5PyRIWuY=; b=aQbwPXSfpGuIpG
	jWjNPlcuTaiEgDZ/cp3qwB6rCraXcQ3Jd2984VZZlY5pzbdEIriPE+E+kGDMfYPpYan4DgJUsl4v4
	jJ9Ieav6NQaOeyHbKWBUULmoAQt79I1YHRV1ntv1w322GZjqzrZG+1zFk74gfnJBWXlsdLJN5H0TI
	dK6TWd5xUkntBYGHkLoCNl5Y6+gQx6bRQAP8kphQ2PcUN3qfo8k0SD1lD3KpGa9TvcJZvLaQCoIZY
	I33Dtix1deeOcLO9JoTcWbSeVK8MNRJsbbofvhL+GUBUqk4OVXxTM0Rm1w9ZSnUpznJNczd3QmOZi
	ZK7Pqrt2RFN90Wl/jomA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nM9J7-00682l-Ic; Mon, 21 Feb 2022 14:04:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nM96m-0062Tx-EH
 for barebox@lists.infradead.org; Mon, 21 Feb 2022 13:52:10 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1nM96i-0001Qj-Mk
 for barebox@lists.infradead.org; Mon, 21 Feb 2022 14:52:04 +0100
Message-ID: <6382664b-de00-346d-b703-81b8db77a42a@pengutronix.de>
Date: Mon, 21 Feb 2022 14:52:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
References: <20220217082714.81749-1-a.fatoum@pengutronix.de>
Content-Language: en-US
In-Reply-To: <20220217082714.81749-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220221_055208_544790_311C78FE 
X-CRM114-Status: GOOD (  22.75  )
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
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/1] Applying barebox for Google Summer of Code 2022
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.02.22 09:27, Ahmad Fatoum wrote:
> I'll submit the GSoC proposal over the weekend. Sorry for the short
> notice, but patches to the project ideas can still follow afterwards.

Just submitted the proposal:

> Why does your organization want to participate in Google Summer of Code?

Firmware development is on the lesser accessible end of software projects: It often requires
special hardware, resources are not very beginner-friendly and while there are established
open source projects, the majority of contributions is company-sponsored, making it
harder for interested individuals to get started on their own.

Since 2009, the barebox project has been working to lessen this gap: By aligning itself with
Linux code and convention, it provides a more familiar UNIX-like interface to the low-level
details, which many users are already acquainted with.

Besides improving its documentation, in recent years, barebox has also considerably improved
its support for virtualized platforms, so development can happen in user-mode without dedicated
hardware, for example the web demo at https://barebox.org/jsbarebox

We are confident that this will make on-boarding process easier. It will teach contributors the ropes of
low level programming and empower them to dive deeper, both inside barebox and outside
in other low-level projects, like the Linux kernel, which barebox shares a lot of code with.

We hope to not only benefit from the code produced, but to involve motivated individuals with
(a newly-found?) low-level affinity, who may continue to use and improve barebox while
exploring more of the world; be it kernel, runtime firmware or system software.

> What would your organization consider to be a successful GSoC program?

The program results should be upstreamed into barebox and it should be reusable
for further work, e.g. a GSoC contributor adding support for their WLAN router not only
serves their immediate use case, but also makes future ports of similar hardware easier.

There are a number of project ideas collected here:

https://barebox.org/doc/latest/devel/project-ideas.html

which contributors can base their proposals on.

> How will you keep mentors engaged with their GSoC contributors?

Mentors and contributors will agree on pre-scheduled meetings to synchronize.
We expect mentors to give advance notice if the schedule can't be observed.
There will be a fallback mentor for each program should a mentor not have the time
to continue.

We will encourage students to use the existing communication channels to get
feedback from the community at large and to get involved in it.

If GSoC is approved for more than one applicant, mentors and contributors can
organize discussions  in a group setting, where common problems are discussed
and approached for solving them and to see how to tackle them at
an organizational level if applicable.

> How will you keep GSoC contributors on schedule to complete their projects?

In the beginning, individual goals and milestones will be set according to the contributors
experience and to their project.
Weekly/Bi-Weekly meeting will be held to discuss progress. Contributors are expected to
publicly publish code, even prior to upstreaming. Contributors should maintain a blog
to document their journey. In case unexpected problems arise, mentors will try to steer projects
to make the most out of contributor time.

> How will you get your GSoC contributors involved in your community during GSoC?

Collaboration currently happens via the mailing list and the IRC/Matrix channel. Mentors
will guide contributors on how to get a working setup for mailing list collaboration. Contributors
will be encouraged to discuss their questions in the real-time chat.


Let's see if it works out. :-)

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

