Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tyo201.gate.nec.co.jp ([202.32.8.193])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NLQ3q-0006cV-Jf
	for barebox@lists.infradead.org; Thu, 17 Dec 2009 23:47:15 +0000
Message-ID: <4B2AC2F9.7080207@necel.com>
Date: Fri, 18 Dec 2009 08:47:05 +0900
From: Shinya Kuribayashi <shinya.kuribayashi@necel.com>
MIME-Version: 1.0
References: <20091217083149.GI15126@pengutronix.de>
In-Reply-To: <20091217083149.GI15126@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Renaming done / new repository
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer wrote:
> Along with this the master git repository moved to:
> 
> git://git.pengutronix.de/git/barebox.git

Nice.  Is there any chance we can get the repository via http?

$ git clone http://git.pengutronix.de/git/barebox.git barebox.git
Initialized empty Git repository in /home/skuribay/git/barebox.git/.git/
fatal: http://git.pengutronix.de/git/barebox.git/info/refs not found: did you run git update-server-info on the server?

$ git version
git version 1.6.5.7

-- 
Shinya Kuribayashi
NEC Electronics

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
