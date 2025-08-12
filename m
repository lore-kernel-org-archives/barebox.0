Delivery-date: Tue, 12 Aug 2025 18:19:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulrix-009ixC-1f
	for lore@lore.pengutronix.de;
	Tue, 12 Aug 2025 18:19:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulriw-0005oA-R1
	for lore@pengutronix.de; Tue, 12 Aug 2025 18:19:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gXhHnj8teUj6lrsdjRzOWycjyn9KIohu4miyWHIaNBg=; b=kHHGTaEk1MyNLNyGPYwqPA6Ngd
	tFCFiIK8CRqidoVEFHHmAMMq/5On5XxAqBv4JgIZ5CXfwlUGvDmZdSjllgX5vO2aNAh9DchqL9kSm
	A3+PxPTlF7pfhE0iVBUzLB94ioArndvffU2d1siofxYhtX2iEbftkwgCoibiuCdSt09huC99YIr5N
	XE5wRUoPOzE1q8MkZ/z8g4152cj/4asQm7m8YvY6LA2e8uCQs0Wex8ibjGtLG6ViuUUquXqXGasS9
	R4AsZeKJGU2OPWhj3d3sRItlpcvlK7cI1ZOrxDN2udnRaRW5RNw6kgMy6Ydye7f/w+rjETUjPlE25
	IV6JlCag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulriM-0000000BI9w-3iRQ;
	Tue, 12 Aug 2025 16:19:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulmFy-0000000AVlP-09VD
	for barebox@lists.infradead.org;
	Tue, 12 Aug 2025 10:29:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ulmFw-00085X-H3; Tue, 12 Aug 2025 12:29:24 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ulmFw-00DBL0-16;
	Tue, 12 Aug 2025 12:29:24 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ulmFw-006uzY-0o;
	Tue, 12 Aug 2025 12:29:24 +0200
Date: Tue, 12 Aug 2025 12:29:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org
Message-ID: <aJsXhGDeqQptV4Rh@pengutronix.de>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_032926_084689_2EFFAC60 
X-CRM114-Status: GOOD (  35.13  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/44] commands: add bfetch/buds of command redirection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Aug 11, 2025 at 02:27:40PM +0200, Ahmad Fatoum wrote:
> Inspired by U-Boot's addition of the ufetch command and the neofetch
> utility for Linux, add a similar command to barebox.
> 
> The command is meant to fancily show off a barebox port with some
> colored ASCII art. The usual alternative is a screenshot of a barebox
> boot up and prompt, which doesn't look fancy, because a first port nearly
> always contains some warning/error messages (e.g. because there is no
> bootsource available and net boot is unconfigured). Example:
> 
> https://raw.githubusercontent.com/a3f/a3f.github.io/refs/heads/master/img/bfetch.png
> 
> This series also includes an abnormal amount of Yakshaving.
> 
> Understandably, we need to export a lot of helpers and lists for bfetch
> to be able to enumerate what features are available at runtime.
> 
> For some things like what CPU we are running on, what uptime we have or
> what's the TEE's implementation ID, we readily have code that prints
> to stdout, but it is not reusable because we do not buffer console
> output streams and thus no command output capture or piping support.
> 
> But even if we had piping, we would need to manipulate strings to split
> lines into key/value pairs.
> 
> Instead, let's rethink the problem: We have commands like cpuinfo, which
> format a table with key/value pairs and print it to out. Then the UNIX
> way would be to use awk/grep/sed/perl or whatever to separate them out
> again.
> 
> Why not skip that and have commands directly return an object
> with key/value pairs (attributes) or more complex data structures
> like PowerShell is able to do?
> 
> This series does exactly that. Device parameters are now associated
> with a struct bobject and that bobject can be returned and consumed
> by commands without requiring association with a device.
> 
> This mechanism should be able to bring support for the pipe operator
> to barebox' shell once the critical commands are adapted to use it and
> there exists a way for commands to report whether they support
> structured I/O or not. As I am still figuring out how to do that,
> I did not include a command that captures structured output to
> a variable, but that would follow in future.

Very nice!

How about something along the lines:

struct device structio_device = {
	.name = "structio",
	.id = DEVICE_ID_SINGLE,
};

static int do_structio(int argc, char *argv[])
{
	int ret;

	active_capture = &structio_device.bobject;

	bobject_del(active_capture);

	/* TODO: merge argv[1-x] to a single string */
	ret = run_command(argv[1]);

	active_capture = NULL;

	return ret;
}

static int structio_init(void)
{
	return register_device(&structio_device);
}
late_initcall(structio_init);

BAREBOX_CMD_START(structio)
	.cmd		= do_structio,
	BAREBOX_CMD_DESC("run with structio")
	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
BAREBOX_CMD_END

With this you could do a

structio cpuinfo; echo $structio.core

We would have to replace characters like whitespaces and hyphens in the
variablenames though.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


