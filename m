Delivery-date: Tue, 04 Jul 2023 12:09:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGcyM-00EeXI-Hw
	for lore@lore.pengutronix.de; Tue, 04 Jul 2023 12:09:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGcyK-0006SP-2P
	for lore@pengutronix.de; Tue, 04 Jul 2023 12:09:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v9V+1LtzYT/CBIfEoacivGEcV21tUzXv8RtxFZv7avM=; b=SSbk7e9hvPpJl3UKbbcdstteyh
	kCuARmD2qwSlTxu265cQi0z1PNesR20iJp30mIMsmqJ+nxcjE+NDuMFuPk48auN+sH1ZgpNx/4KXT
	ZD+2UD19UoOxya/d16AnAN9xOklrJnINP7QBr98BLyT+GiQFd7/2b1XHruDqcdPj6UCEDRVrFAJi4
	VVbjrndO/SMULqZLiAqm8tYhpKVUGEy0wDtl6OhupzSu8lsYxkBxGdBLt7k0DmfGTjd0XVOKc3mss
	SHEHQzeRk6hUHb+K43dH4EXOs2IBBt21Evl/CjMXBOlnPmKE5CFuzWSIyc0rAZVD5iTsdbA3Ivtfh
	Q3As8xXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGcx0-00CqDu-0y;
	Tue, 04 Jul 2023 10:08:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGcww-00CqDE-3A
	for barebox@lists.infradead.org;
	Tue, 04 Jul 2023 10:08:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qGcwt-0006Kd-8W; Tue, 04 Jul 2023 12:07:55 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qGcwt-0002sF-0y; Tue, 04 Jul 2023 12:07:55 +0200
Date: Tue, 4 Jul 2023 12:07:55 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20230704100755.g7vf7rkhmexz4a3k@pengutronix.de>
References: <20230703225813.2828815-1-m.felsch@pengutronix.de>
 <20230703225813.2828815-2-m.felsch@pengutronix.de>
 <3cd84253-59d6-d6a6-7432-71579f73a3d0@pengutronix.de>
 <20230704083222.si2i4vxkomsnsixi@pengutronix.de>
 <20230704084646.GW18491@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230704084646.GW18491@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230704_030759_020288_234E95EB 
X-CRM114-Status: GOOD (  36.83  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] commands: test: add based support for bash-test style
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-07-04, Sascha Hauer wrote:
> On Tue, Jul 04, 2023 at 10:32:22AM +0200, Marco Felsch wrote:
> > Hi Ahmad,
> > 
> > On 23-07-04, Ahmad Fatoum wrote:
> > > On 04.07.23 00:58, Marco Felsch wrote:
> > > > Add [[ expression ]] support which allow pattern matching like:
> > > > 
> > > >   - [[ "foo1" == "foo*" ]]
> > > >   - [[ "foo" != "bar" ]]
> > > > 
> > > > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > > > ---
> > > >  commands/Kconfig | 13 +++++++++++++
> > > >  commands/test.c  | 39 ++++++++++++++++++++++++++++++++++-----
> > > >  2 files changed, 47 insertions(+), 5 deletions(-)
> > > > 
> > > > diff --git a/commands/Kconfig b/commands/Kconfig
> > > > index 4d3ff631a8..615e96aa9d 100644
> > > > --- a/commands/Kconfig
> > > > +++ b/commands/Kconfig
> > > > @@ -1219,6 +1219,19 @@ config CMD_TEST
> > > >  		  !, =, !=, -eq, -ne, -ge, -gt, -le, -lt, -o, -a, -z, -n, -d, -e,
> > > >  		  -f, -L; see 'man test' on your PC for more information.
> > > >  
> > > > +if CMD_TEST
> > > > +
> > > > +config CMD_TEST_BASH_COMP
> > > > +	tristate
> > > > +	select CONFIG_FNMATCH
> > > 
> > > select FNMATCH, no CONFIG_
> > 
> > Right.
> > 
> > > Does this really need its own symbol? Can't you just use CONFIG_GLOB
> > > and amend the help text?
> > 
> > The implementation was inspired by busybox and they use fnmatch.
> > Checking glob.c I don't see any difference, therefore I would keep the
> > fnmatch.
> 
> glob() is the wrong function anyway. glob() expands patterns to existing
> files. You want to do pattern matching only not looking into the VFS.
> fnmatch() is the right function here.
> 
> Besides, glob() uses fnmatch(), so by using glob() you would add even
> more code.
> 
> > 
> > I wasn't sure if every user need the bash(ism) support and sometimes
> > bootloader partitions are really small due to legacy reasons. Therefore
> > I went this way to let the user the choice to enable/disable the
> > support.
> 
> You can't do much in barebox without globalvar support which already
> uses fnmatch(), so it's likely enabled anyway.

Ah right, I will drop it then.

Thanks,
Marco

> 
> Sascha
> 
> > > > +		return fnmatch(right_op, left_op, 0);
> > > > +#endif
> > > 
> > > Scripts that execute differently depending on a barebox config option
> > > is not good user experience. I think it would be better if [[ is an
> > > error if support is missing.
> > 
> > I was thinking about a warning which is printed once you use [[ and
> > didn't enabled it before. Then I read man bash again and [[ supports
> > '=' as well which equals the [ function. Therefore I dropped the
> > warning.
> > 
> > > Also can't the #ifdef be replaced with a IS_ENABLED()
> > 
> > I don't think so, since the fnmatch is added conditional to keep the
> > code base the same if not enabled.
> 
> Use IS_ENABLED(). The linker will discard unused functions for you. We
> use this all over the place.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


