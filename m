Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x235.google.com ([2607:f8b0:4001:c06::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avOoL-0006EE-Tr
 for barebox@lists.infradead.org; Wed, 27 Apr 2016 12:43:23 +0000
Received: by mail-io0-x235.google.com with SMTP id d62so44848824iof.2
 for <barebox@lists.infradead.org>; Wed, 27 Apr 2016 05:43:01 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160427092501.GT7860@pengutronix.de>
References: <1461653060-13481-1-git-send-email-s.hauer@pengutronix.de>
 <CAOMZO5BvYEBGnZbT1aznEbgoZH_hZS=a+-phUz+wJPX02BmqFg@mail.gmail.com>
 <20160427092501.GT7860@pengutronix.de>
Date: Wed, 27 Apr 2016 09:43:00 -0300
Message-ID: <CAOMZO5BNTe4TGtk2H3s12-468N3JOLTGXv93T5meMZs_6Duhog@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
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
Subject: Re: [PATCH v2] ARM: i.MX: increase barebox partition sizes
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Apr 27, 2016 at 6:25 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Normally the environment is much smaller, so I wouldn't expect issues
> here. The alternative to making the environment smaller would be to move
> other partitions to the back. This would probably hurt more, especially
> since a regular fdisk starts the first partition at offset 1MiB.
>
> Another approach would be to use a MBR partition for the environment
> instead of using the raw device.
>
>>
>> Shouldn't this change be done by a separate patch?
>
> We can't increase the barebox partition without shrinking the
> environment right behind it. Or do you mean that we first shrink

Ok, got it. I wasn't aware of this 1MiB requirement, so all is fine then.

Thanks

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
