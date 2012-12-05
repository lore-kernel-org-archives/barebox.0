Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.cvg.de ([62.153.82.30])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgDNr-00004x-KV
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 11:43:25 +0000
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
References: <1354622569-7673-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
 <1354622569-7673-2-git-send-email-enrico.scholz@sigma-chemnitz.de>
 <20121205104627.GD10369@pengutronix.de>
 <ly8v9c3f95.fsf@ensc-virt.intern.sigma-chemnitz.de>
Date: Wed, 05 Dec 2012 12:43:17 +0100
In-Reply-To: <ly8v9c3f95.fsf@ensc-virt.intern.sigma-chemnitz.de> (Enrico
 Scholz's message of "Wed, 05 Dec 2012 12:33:26 +0100")
Message-ID: <ly4nk03esq.fsf@ensc-virt.intern.sigma-chemnitz.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH 2/2] OMAP: disable unaligned access when building the IFT
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Enrico Scholz <enrico.scholz@sigma-chemnitz.de> writes:

>>> commit b823fd9ba56d56e3cbb5b05e7a4815fb0914204a
>>> Author: Albert ARIBAUD <albert.u.boot@aribaud.net>
>>> Date:   Tue Oct 9 09:28:15 2012 +0000
>>>     ARM: prevent misaligned array inits
>> ...
>> This patch explicitely mentions char arrays initialized on the stack
>> like this:
>
> I do not know the backgrounds of this patch but without additional
> context, I think it is wrong.

ah... found it:

 | be  actually unnecessary. In order to catch these accesses and remove
 | or optimize them, option -munaligned-access is explicitly set for all
 | versions of gcc which support it.

e.g. u-boot sets '-munaligned-access' unconditionally which is imo
silly. And now, they are trying to fix this mess by compiling single
files with '-mno-unaligned-access'...



Enrico

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
