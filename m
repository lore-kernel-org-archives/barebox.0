Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22f.google.com ([2a00:1450:4013:c01::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WKOc2-0007H1-08
 for barebox@lists.infradead.org; Mon, 03 Mar 2014 08:52:38 +0000
Received: by mail-ea0-f175.google.com with SMTP id d10so1114571eaj.34
 for <barebox@lists.infradead.org>; Mon, 03 Mar 2014 00:52:12 -0800 (PST)
Date: Mon, 3 Mar 2014 10:04:13 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140303090411.GA24214@x61s.Speedport_W_921V_1_24_000>
References: <1393573468-31105-1-git-send-email-alex.aring@gmail.com>
 <1393573468-31105-4-git-send-email-alex.aring@gmail.com>
 <20140228080333.GA31407@omega>
 <20140228142118.GF17250@pengutronix.de>
 <20140228171207.GA615@omega>
 <20140303083050.GM17250@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140303083050.GM17250@pengutronix.de>
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
Subject: Re: [RFC 3/3] libbb: read_full: use read return instead size
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Mon, Mar 03, 2014 at 09:30:50AM +0100, Sascha Hauer wrote:
> 
> So our read_file implementation doesn't work procfs like filesystems where
> all sizes are 0. Your patch doesn't change this though. In 2/3 you
> remove the if (!size) check and call the fs drivers read function with
> size 0. In this case the read function may return values, but never
> actually read something because the buffer size is 0.
> 
exactly. The imporant question for me is "do you want to accept patches
to changes this behaviour, so we can read zero file size files". I mean
this would be a huge change in internal api of filesystem layer and I
hope we doesn't break anything else.

But your are fine with me to say "there exists a problem with read of
zero sized files?".

I will create some "better" patches for this, this RFC should only answer
the question if you apply fixes or not.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
