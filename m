Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbUpj-0002GM-Rz
 for barebox@lists.infradead.org; Sun, 12 May 2013 11:52:56 +0000
Date: Sun, 12 May 2013 13:52:29 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20130512135229.5c7f1879@skate>
In-Reply-To: <20130512114115.GC5869@tarshish>
References: <1368358553-22936-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <20130512114115.GC5869@tarshish>
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
Subject: Re: [PATCH] arm: ensure the build doesn't fail when kwbimage lacks
 the binary blob
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

Dear Baruch Siach,

On Sun, 12 May 2013 14:41:16 +0300, Baruch Siach wrote:

> > The only drawback is that barebox-flash-image, which normally points
> > to barebox.kwb, becomes a state symbolic link.
> 
> stale?

Gaah, yes, thanks. I indeed wanted to say:

   The only drawback is that barebox-flash-image, which normally points
   to barebox.kwb, becomes a _stale_ symbolic link.

If the approach is approved, I'll resend a fixed up patch.

Sorry for the mess,

Thomas
-- 
Thomas Petazzoni, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
