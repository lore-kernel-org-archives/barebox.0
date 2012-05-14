Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STr5m-0006Dw-JE
 for barebox@lists.infradead.org; Mon, 14 May 2012 08:57:26 +0000
Received: by lbbgg6 with SMTP id gg6so3935777lbb.36
 for <barebox@lists.infradead.org>; Mon, 14 May 2012 01:57:20 -0700 (PDT)
Message-ID: <4FB0C8EB.1080508@gmail.com>
Date: Mon, 14 May 2012 14:57:15 +0600
From: Alexey Galakhov <agalakhov@gmail.com>
MIME-Version: 1.0
References: <20120513090917.GX27341@pengutronix.de>
 <1336912806-4163-1-git-send-email-agalakhov@gmail.com>
 <1336912806-4163-4-git-send-email-agalakhov@gmail.com>
 <201205141013.05760.jbe@pengutronix.de>
In-Reply-To: <201205141013.05760.jbe@pengutronix.de>
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
Subject: Re: [PATCH 3/9] Minimal S5PV210 + Tiny210 support (2nd stage only)
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On 14.05.2012 14:13, Juergen Beisert wrote:

> This patch series reflects your development steps (2nd stage first, then
> native boot support). But this is not useful when including the results into
> the Barebox repository.
> 
> For example you should add your new platform at the end of this patch series
> after all the required preparations are done to make it work.

Ok, I'll rebase them.

The reason to do so was to introduce (harmless?) refactoring first and
to add new features next to make git bisect work.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
