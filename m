Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aIoRc-0004p0-Tp
 for barebox@lists.infradead.org; Tue, 12 Jan 2016 02:12:27 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Tue, 12 Jan 2016 02:11:48 +0000
Message-ID: <1452564722.4474.235.camel@rtred1test09.kymeta.local>
References: <1452520932-13085-1-git-send-email-yegorslists@googlemail.com>
In-Reply-To: <1452520932-13085-1-git-send-email-yegorslists@googlemail.com>
Content-Language: en-US
Content-ID: <32D81A33BD052847A639776F798210B9@kymetacorp.com>
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
Subject: Re: [PATCH] FIT: bootm: accept configuration name as string
To: "yegorslists@googlemail.com" <yegorslists@googlemail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, 2016-01-11 at 15:02 +0100, yegorslists@googlemail.com wrote:
>  
> +int of_node_cmp(const char *s1, const char *s2)
> +{

Be nice if this was documented.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
