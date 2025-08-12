Delivery-date: Tue, 12 Aug 2025 18:21:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulrkm-009izs-1g
	for lore@lore.pengutronix.de;
	Tue, 12 Aug 2025 18:21:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulrkl-0006WC-Tc
	for lore@pengutronix.de; Tue, 12 Aug 2025 18:21:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0/bILw6sPw9wc1nVdVFPlxNhOG/lwvfYH25ioHy641E=; b=012Kb9nufy+cK4G2B9/kMwKXhY
	LwIIEREqrnTg6Uc5AeiR3AAGvqo8qAYXiwVwiy5U5KMcmr82g4EwZ3AoWC0jOZSJmkEJzw+rmR6A1
	idf8pc2SCGHccqPKqwjCwn016P++rcD0MRk///qOguV9cT7XS+iYgC4sivRgkur1XJxLszuSF7EV1
	cDGKIWZLJAHyvB98aPJHYOIIWQhi1axOeCYutTSGvz1JPf91NfNLK4x4bZnXnXx+zjrls//WTfS9F
	/9Dzu1YrVqhEZSnVz/2R3MsB221ivl0ovnQIBQD4PmtB7JydYGQ5g5NCkTAn52KXLP/d84Pt9QQ/f
	F6BFiiIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulrkF-0000000BKoW-3Isk;
	Tue, 12 Aug 2025 16:21:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uln6X-0000000Abhi-3io0
	for barebox@lists.infradead.org;
	Tue, 12 Aug 2025 11:23:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uln6V-0006kT-LJ; Tue, 12 Aug 2025 13:23:44 +0200
Message-ID: <5e2ad1d8-6049-409c-b048-99d58452747a@pengutronix.de>
Date: Tue, 12 Aug 2025 13:23:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
 <aJsXhGDeqQptV4Rh@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aJsXhGDeqQptV4Rh@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_042345_933564_63BAD881 
X-CRM114-Status: GOOD (  27.88  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/44] commands: add bfetch/buds of command redirection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 12.08.25 12:29, Sascha Hauer wrote:
> On Mon, Aug 11, 2025 at 02:27:40PM +0200, Ahmad Fatoum wrote:
>> This series does exactly that. Device parameters are now associated
>> with a struct bobject and that bobject can be returned and consumed
>> by commands without requiring association with a device.
>>
>> This mechanism should be able to bring support for the pipe operator
>> to barebox' shell once the critical commands are adapted to use it and
>> there exists a way for commands to report whether they support
>> structured I/O or not. As I am still figuring out how to do that,
>> I did not include a command that captures structured output to
>> a variable, but that would follow in future.
> 
> Very nice!
> 
> How about something along the lines:
> 
> struct device structio_device = {
> 	.name = "structio",
> 	.id = DEVICE_ID_SINGLE,
> };

bobjects already have a local flag. I think we should rather have a
bobject_export() that clears the flag on an existing object and makes
it available globally. Code will need to be adapted to loop through
global bobjects instead of devices.

Then there is the matter that:

- many commands return lists or a tree of objects (e.g. iomem,
clk_dump, findmnt), so structio should perhaps

- We will probably want an error bobject that not only holds an
error code, but also a message.

(Future teaser: Once we have support for bobject trees, every
 structio command output can be trivially formatted as JSON
 output for test suite consumption!)

> static int do_structio(int argc, char *argv[])
> {
> 	int ret;
> 
> 	active_capture = &structio_device.bobject;
> 
> 	bobject_del(active_capture);
> 
> 	/* TODO: merge argv[1-x] to a single string */
> 	ret = run_command(argv[1]);

We have strjoin for that used in watch and time, but we should really
have a function that takes argv directly to avoid whitespace issues.

> static int structio_init(void)
> {
> 	return register_device(&structio_device);
> }
> late_initcall(structio_init);

I was thinking of a command that you pass in the variable name and the
bobject is exported using that name. That way you can call multiple
commands to collect the results and then operate on them.

Shell variable garbage collection should in this case take care to
free the bobjects.

That command would also check if structio is even supported for the
command to be executed and fail otherwise.

That's all future work though.

Cheers,
Ahmad

> BAREBOX_CMD_START(structio)
> 	.cmd		= do_structio,
> 	BAREBOX_CMD_DESC("run with structio")
> 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
> BAREBOX_CMD_END
> 
> With this you could do a
> 
> structio cpuinfo; echo $structio.core
> 
> We would have to replace characters like whitespaces and hyphens in the
> variablenames though.
> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


