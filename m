Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X9WdU-0005aI-9n
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 09:45:30 +0000
Message-ID: <1406022197.4667.39.camel@weser.hi.pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 22 Jul 2014 11:43:17 +0200
In-Reply-To: <CAOpc7mF2QKiSmi2LYpumpBOPyfwg5mkKkHTi2PK2Z4Ehv46GzA@mail.gmail.com>
References: <1406015842-20754-4-git-send-email-holgerschurig@gmail.de>
 <1406017939.4667.14.camel@weser.hi.pengutronix.de>
 <CAOpc7mGUTXhr6FaYvC54HgyvyT=UD=h8CrrwynKzVuSSiFE1pw@mail.gmail.com>
 <1406019042.4667.23.camel@weser.hi.pengutronix.de>
 <CAOpc7mEBJB=xNTbawAx3PyvquErCsQKHg39-mQzHHjU+YczcSA@mail.gmail.com>
 <CAOpc7mF2QKiSmi2LYpumpBOPyfwg5mkKkHTi2PK2Z4Ehv46GzA@mail.gmail.com>
Mime-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/3] sandbox: work around missing of_add_memory_bank()
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Am Dienstag, den 22.07.2014, 11:09 +0200 schrieb Holger Schurig:
> Okay, another post, with less heat.
> 
Yes, please let us keep the heat out of this argument.

> I asked you specifically if a proposed solution would be ok. You
> didn't answer at all. That proposed solution would still not "work"
> (it won't add a memory bank, because AFAIK in sandbox there are no
> memory banks at all, it just uses the hosts memory). It might compile,
> however and it might be a bit of unneeded code in the "make
> ARCH=sandbox sandbox_defconfig && make all" case.
> 
I wasn't able to give any specific advice as I admitted I did not
understand the problem yet. I'm aware that there are no memory banks in
sandbox, but this doesn't explain a build failure. Your commit message
unfortunately didn't explain this either, that's why I asked you to
elaborate.

Now I actually looked up the code and I think an easier solution would
be to allow CONFIG_OFTREE_MEM_GENERIC to be enabled on sandbox. Would
this work for you?

> The tone of your mail made me think that I actually cannot convince
> you, that you don't want this. Your reference to signal-to-noise made
> me think this. I got the impression that you're dismissing the concept
> of static checking and of code-massaging to make that easier.
> 

Sorry, if it seemed like I wanted to trash your contribution. This
wasn't my intention at all. I'm absolutely in favor of static checking
but found that clangs scan-build gives at lot of false positives on
other projects and I'm not really keen on adding ifdefs just for this
use-case. But as I said above there may be another solution.

Regards,
Lucas

-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
