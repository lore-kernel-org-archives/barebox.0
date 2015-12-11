Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a7TOU-0006B1-7p
 for barebox@lists.infradead.org; Fri, 11 Dec 2015 19:30:18 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Fri, 11 Dec 2015 19:29:25 +0000
Message-ID: <1449862171.26955.115.camel@rtred1test09.kymeta.local>
References: <1449830435-6964-1-git-send-email-s.hauer@pengutronix.de>
 <1449830435-6964-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1449830435-6964-2-git-send-email-s.hauer@pengutronix.de>
Content-Language: en-US
Content-ID: <B398C7C2DD26564D855494E76EDD8C96@kymetacorp.com>
MIME-Version: 1.0
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
Subject: Re: [PATCH 2/2] partition: Create links with partition names
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, 2015-12-11 at 11:40 +0100, Sascha Hauer wrote:
> When a partition has a name create a link to the original partition
> rather than registering a second cdev.

What does devinfo look like now?  Do named partition still show up?
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
