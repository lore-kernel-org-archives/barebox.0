Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo3.mail-out.ovh.net ([188.165.33.202]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1THcpl-0000Tx-5N
 for barebox@lists.infradead.org; Fri, 28 Sep 2012 15:50:34 +0000
Received: from mail402.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 233C1FFC16D
 for <barebox@lists.infradead.org>; Fri, 28 Sep 2012 17:59:06 +0200 (CEST)
Date: Fri, 28 Sep 2012 17:48:01 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120928154801.GK26553@game.jcrosoft.org>
References: <20120913172220.GB20834@game.jcrosoft.org>
 <1347558023-25680-1-git-send-email-plagnioj@jcrosoft.com>
 <1347558023-25680-7-git-send-email-plagnioj@jcrosoft.com>
 <20120928104846.GI24458@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120928104846.GI24458@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 7/7] defaultenv-2: add boot sequence
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 12:48 Fri 28 Sep     , Sascha Hauer wrote:
> On Thu, Sep 13, 2012 at 07:40:23PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Boot will boot run sequentially the script in /env/boot.d
> > 
> > drop global.boot.default as we start the boot sequence by default
> > 
> > update the current board using the defaultenv-2 at the sametime
> > 
> 
> I'm going to drop this one in its current form.
> 
> The way it is written is just too confusing. We have a sequence=[y|n]
> which is set in multiple places, then after evaluating 60 lines of
> shell code the script eventually may call itself, which again sets
> sequence to other values.
> 
> Currently my babbage board (which appearantly does not have links in
> /env/boot.d comes up with:
> 
> > WARNING: boot sequence: none
> > booting
> > /env/boot/ or /env/boot.d/ does not exist. Valid choices:
> > initrd net
> > 
> > boot sequence:
> > none
> 
> This gives not much clue what is wrong and what has to be done next.
> 
> The recursive call to itself makes the script unmaintainable and error
> prone.
> 
> The boot sequence feature per se is ok and it's good to have, but the
> implementation currently is not good.
> 
> It would be much better to separate the boot script from a script
> running a boot sequence. That way the boot script can have a clear set
> of parameters and is responsible for only booting a single source. Then
> a boot-sequence script again can have a clear set of options and has the
> only responsibility of iterating over the available sources.
> 
> I think many usecases do not require a boot sequence. For example if
> I want to boot from network it won't help me if the board boots from
> flash instead due to some network error. That's why I think users
> not wanting a boot sequence should be bothered with this as little
> as possible. This could be solved by keeping the boot script like
> it is and move the sequence stuff out to another script.
> 
> Look at documenting what the script does:
> 
> boot [method]: Boot a system using /env/boot/[method]
> boot-sequence: Boot a system by iterating over /env/boot.d/* until
>                one succeeds.
> 
> Now with both combined in a single script:
> 
> boot [method]: If called without method, it will iterate over
>                /env/boot.d/*. If that directory does not exist,
>                it will fall back to a single boot source, which you
>                haven't specified, so the script will complain. If you
>                give [method], that will be one of /env/boot/[method]
>                or /env/boot.d/[method]. If [method] exists in both
>                directories, the behaviour will be unspecified.
This was your request to do this this way

THe first version was keeping the old boot.default and ask you to enable the
boot sequence specifycally and then you ask me to drop this to make the boot
sequence by default

so now I've hardware ready to be send on the way with this next with boot
sequence mandatory

so I do not think we drop it we can update it but not drop it
> 
> Another thing is that I do not have a good feeling about putting soft
> links into the repository. I can't really give any concrete problems
> with it, it just don't feels good to use such a feature which other
> version control systems or filesystems do not support
none of the scm or fs we known does not support this

except window stuff and common it's windows

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
