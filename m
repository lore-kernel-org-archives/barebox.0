Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.zeus.flokli.de ([88.198.15.28] helo=zeus.flokli.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibmhn-00064w-CA
 for barebox@lists.infradead.org; Mon, 02 Dec 2019 14:29:40 +0000
Date: Mon, 2 Dec 2019 15:29:34 +0100
From: Florian Klink <flokli@flokli.de>
Message-ID: <20191202142934.tygvckfoljl35mq3@xps.flokli.de>
References: <20191127231946.27941-1-flokli@flokli.de>
 <20191202085732.glnpepfo236vaxrk@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202085732.glnpepfo236vaxrk@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: use /usr/bin/env bash shebang instead of /bin/bash
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

>> Using #!/usr/bin/env bash solves this, and is consistent with how the
>> perl and python shebangs look like in the tree.
>
>What is the exact case you are fixing with these patches? I am fine with
>merging them generally, I just want to understand why and where you need
>it.

In that particular case, it improves interactively building on NixOS
(which doesn't have /bin/bash).

We can patch shebangs during a package build, but having shebangs
working out of the box after cloning a git checkout really helps while
tinkering.

Also, it just feels right, given we do the same with `/usr/bin/env perl`
and `/usr/bin/env python` there aswell.

Florian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
