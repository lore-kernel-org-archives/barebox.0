Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.cvg.de ([62.153.82.30])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UdGsz-00030x-Ce
 for barebox@lists.infradead.org; Fri, 17 May 2013 09:23:38 +0000
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
References: <1368537296-19610-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
 <20130515062811.GB32299@pengutronix.de>
 <20130517082411.GW20989@pengutronix.de>
Date: Fri, 17 May 2013 11:22:20 +0200
In-Reply-To: <20130517082411.GW20989@pengutronix.de> (Sascha Hauer's message
 of "Fri, 17 May 2013 10:24:11 +0200")
Message-ID: <lyli7eot9v.fsf@ensc-virt.intern.sigma-chemnitz.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/3] ARM v7: fix mmu-off operation
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

>> So you can drop this stack push by using r12 instead of r10. That's fine
>> I think, but should be a patch of its own. Can you resend this as two
>> patches?
>
> Oh, I just saw you can't since then r12 would be corrupted when
> v7_mmu_cache_flush is called from v7_mmu_cache_off.
>
> Applied this one to master and the rest to -next with a small
> modification.

ok; I was about to split patches by renaming 'r10' to 'r12' in the first
step (which will work afais because r12 will be pushed on stack on top
of v7_mmu_cache_flush()) but was interrupted by other work.


Enrico

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
