Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZUE5i-0001KX-U0
 for barebox@lists.infradead.org; Tue, 25 Aug 2015 13:16:43 +0000
Message-ID: <1440508579.6687.59.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Tue, 25 Aug 2015 15:16:19 +0200
In-Reply-To: <20150825070603.GO18700@pengutronix.de>
References: <1440415935-32674-1-git-send-email-d.schultz@phytec.de>
 <20150825070603.GO18700@pengutronix.de>
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
Subject: Re: [PATCH 1/3] commands: Add MMC ext. CSD register tool
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Daniel Schultz <d.schultz@phytec.de>

On Di, 2015-08-25 at 09:06 +0200, Sascha Hauer wrote:
> Your printfs are very inefficient. You should use something like:
> 
>         if (val)
>                 str = "en";
>         else
>                 str = "dis";
>         printf("Command queuing is %sabled\n", str);
> 
> Same goes for many other printfs. This will result in much less
> similar strings in the binary.

or like this:
printf("Command queuing is %sabled\n", val ? "en" : "dis");

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
