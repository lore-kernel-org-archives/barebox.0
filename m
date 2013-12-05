Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x230.google.com ([2a00:1450:4008:c01::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VoP79-00086F-Bs
 for barebox@lists.infradead.org; Thu, 05 Dec 2013 02:56:32 +0000
Received: by mail-bk0-f48.google.com with SMTP id v10so6793304bkz.7
 for <barebox@lists.infradead.org>; Wed, 04 Dec 2013 18:56:07 -0800 (PST)
Date: Thu, 5 Dec 2013 04:04:17 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20131205030416.GA5061@x61s.Speedport_W_921V_1_24_000>
References: <000901cef160$a9c88bd0$fd59a370$@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000901cef160$a9c88bd0$fd59a370$@gmail.com>
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

Hi Kevin (if this is your first name, I am still unsure by chinese
names),

On Thu, Dec 05, 2013 at 10:21:03AM +0800, Kevin Du Huanpeng wrote:
> Hi, is anyone know the these two files used for:
> 	scripts/fix_size
> 	scripts/kernel-install

This is already fixed by Alexander Shiyan, see [1].

You don't find it, because it's in next branch. :-)

I am thinking one gitignore file is missing. It's the
"kernel-install-target" binary. I don't know it exactly now, I waiting
if all things going into master and then maybe I will send a patch.





- Alex

---
damn, another day which I can't sleep and hack all night long. Can't
turn off my brain. This isn't good for me. :-(

[1] http://git.pengutronix.de/?p=barebox.git;a=commit;h=2bd891b0ae266bd7cac58805092fc3f4ae67e55e

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
