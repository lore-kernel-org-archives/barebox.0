Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STr7s-0007zP-D5
 for barebox@lists.infradead.org; Mon, 14 May 2012 08:59:33 +0000
Received: by lbbgg6 with SMTP id gg6so3937010lbb.36
 for <barebox@lists.infradead.org>; Mon, 14 May 2012 01:59:30 -0700 (PDT)
Message-ID: <4FB0C96F.30502@gmail.com>
Date: Mon, 14 May 2012 14:59:27 +0600
From: Alexey Galakhov <agalakhov@gmail.com>
MIME-Version: 1.0
References: <20120513090917.GX27341@pengutronix.de>
 <1336912806-4163-1-git-send-email-agalakhov@gmail.com>
 <1336912806-4163-3-git-send-email-agalakhov@gmail.com>
 <201205141003.02064.jbe@pengutronix.de> <4FB0C830.7010701@gmail.com>
 <20120514085716.GC30400@pengutronix.de>
In-Reply-To: <20120514085716.GC30400@pengutronix.de>
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
Subject: Re: [PATCH 2/9] Fine split S3C arch dependencies from generic code
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Juergen Beisert <jbe@pengutronix.de>

On 14.05.2012 14:57, Sascha Hauer wrote:

> Hm? The SoC name already is in the filename, so there *is* space for a
> new file.

I'll move this to a separate rename-only patch. If you don't apply them,
nothing will break.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
