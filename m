Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x231.google.com ([2a00:1450:4008:c01::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VoPKC-0008Di-0C
 for barebox@lists.infradead.org; Thu, 05 Dec 2013 03:10:00 +0000
Received: by mail-bk0-f49.google.com with SMTP id my13so6788438bkb.8
 for <barebox@lists.infradead.org>; Wed, 04 Dec 2013 19:09:37 -0800 (PST)
Date: Thu, 5 Dec 2013 04:17:49 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20131205031748.GA6203@x61s.Speedport_W_921V_1_24_000>
References: <000901cef160$a9c88bd0$fd59a370$@gmail.com>
 <20131205030416.GA5061@x61s.Speedport_W_921V_1_24_000>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131205030416.GA5061@x61s.Speedport_W_921V_1_24_000>
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
Subject: Re: [.gitignore] please add generated file to .gitignore
To: Kevin Du Huanpeng <u74147@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Dec 05, 2013 at 04:04:16AM +0100, Alexander Aring wrote:
> Hi Kevin (if this is your first name, I am still unsure by chinese
> names),
> 
> On Thu, Dec 05, 2013 at 10:21:03AM +0800, Kevin Du Huanpeng wrote:
> > Hi, is anyone know the these two files used for:
> > 	scripts/fix_size
> > 	scripts/kernel-install
> 
> This is already fixed by Alexander Shiyan, see [1].
> 
> You don't find it, because it's in next branch. :-)
> 
> I am thinking one gitignore file is missing. It's the
> "kernel-install-target" binary. I don't know it exactly now, I waiting
> if all things going into master and then maybe I will send a patch.
> 
> 
One point is missing here... if you don't can see these file anymore on
your branch. Then run:

git cherry-pick 2bd891b0ae266bd7cac58805092fc3f4ae67e55e

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
