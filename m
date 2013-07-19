Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mho-03-ewr.mailhop.org ([204.13.248.66]
 helo=mho-01-ewr.mailhop.org)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V0BKj-0000vO-DU
 for barebox@lists.infradead.org; Fri, 19 Jul 2013 14:06:57 +0000
Received: from pool-72-84-113-162.nrflva.fios.verizon.net ([72.84.113.162]
 helo=titan)
 by mho-01-ewr.mailhop.org with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.72) (envelope-from <jason@lakedaemon.net>)
 id 1V0BKO-000GMd-Ha
 for barebox@lists.infradead.org; Fri, 19 Jul 2013 14:06:36 +0000
Received: from titan.lakedaemon.net (localhost [127.0.0.1])
 by titan (Postfix) with ESMTP id 482ED46BFF4
 for <barebox@lists.infradead.org>; Fri, 19 Jul 2013 10:06:35 -0400 (EDT)
Date: Fri, 19 Jul 2013 10:06:35 -0400
From: Jason Cooper <jason@lakedaemon.net>
Message-ID: <20130719140635.GB19736@titan.lakedaemon.net>
References: <1374241457-8565-1-git-send-email-jason@lakedaemon.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1374241457-8565-1-git-send-email-jason@lakedaemon.net>
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
Subject: Re: [PATCH] arm: mvebu: add board USI Topkick
To: barebox@lists.infradead.org

On Fri, Jul 19, 2013 at 01:44:17PM +0000, Jason Cooper wrote:
> Successfully boots to console via kwboot.  No other functionality yet.
> 
> Signed-off-by: Jason Cooper <jason@lakedaemon.net>
> ---

Forgot to mention, this is based against v2013.07.0.  I tried against
origin/master a few days ago and had some build problems (had to specify
BOARD manually).

For those interested, you can pull from here:

  git://git.infradead.org/users/jcooper/barebox.git topkick

If the branch isn't there yet, please wait an hour or so.  I'm currently
push master up there for the first time and it's going a bit _s_l_o_w_.

thx,

Jason.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
