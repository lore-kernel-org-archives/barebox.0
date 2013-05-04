Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UYgb0-0001F6-EV
 for barebox@lists.infradead.org; Sat, 04 May 2013 17:50:07 +0000
Date: Sat, 4 May 2013 19:49:37 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20130504194937.47f53a82@skate>
In-Reply-To: <1367688229.463901062@f377.i.mail.ru>
References: <1367599871-28479-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <20130504171530.GK31290@titan.lakedaemon.net>
 <1367688229.463901062@f377.i.mail.ru>
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
Subject: Re: [PATCH 0/7] Basic support for Marvell Armada 370/XP SoC
To: Alexander Shiyan <shc_work@mail.ru>
Cc: Lior Amsalem <alior@marvell.com>, barebox@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>, Willy Tarreau <w@1wt.eu>

Dear Alexander Shiyan,

On Sat, 04 May 2013 21:23:49 +0400, Alexander Shiyan wrote:

> I did not look carefully these patches but seems to me that to have
> any configuration files outside /env is not good for barebox.

They are not configuration files used at runtime. They are
configuration files used by the image construction utility to know how
to create a bootable image for the target system. This image
construction utility runs on the build machine, and is the new
scripts/kwbimage tool introduced in this patch series.

Best regards,

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
