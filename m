Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hazzE-0006Sc-JY
 for barebox@lists.infradead.org; Wed, 12 Jun 2019 09:56:14 +0000
References: <20190612092400.4879-1-s.hauer@pengutronix.de>
From: Bastian Krause <bst@pengutronix.de>
Message-ID: <57750bc8-db93-be02-4519-e52194b09458@pengutronix.de>
Date: Wed, 12 Jun 2019 11:56:04 +0200
MIME-Version: 1.0
In-Reply-To: <20190612092400.4879-1-s.hauer@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH] startup: Do not overwrite global.linux.bootargs.console
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

On 6/12/19 11:24 AM, Sascha Hauer wrote:
> global.linux.bootargs.console already exists. It is created during
> console registration with a value, so do not overwrite it with an
> empty value during init sequence. Instead create the variable if it
> doesn't exist, but keep the old value if it does exist.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Tested-by: Bastian Krause <bst@pengutronix.de>

Thanks,
Bastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
