Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a616c-0004Pj-4r
 for barebox@lists.infradead.org; Mon, 07 Dec 2015 19:05:50 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Mon, 7 Dec 2015 19:05:08 +0000
Message-ID: <1449515113.26955.21.camel@rtred1test09.kymeta.local>
References: <1449474763-14099-1-git-send-email-andrew.smirnov@gmail.com>
 <1449474763-14099-7-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1449474763-14099-7-git-send-email-andrew.smirnov@gmail.com>
Content-Language: en-US
Content-ID: <F5C35AE2980C384480B2F0516DB5F65C@kymetacorp.com>
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
Subject: Re: [PATCH 7/7] hwmon: Port TEMPMON sensor driver
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Sun, 2015-12-06 at 23:52 -0800, Andrey Smirnov wrote:
> +
> +       imx_thermal->sensor.name = of_get_property(dev->device_node,
> +
> "barebox,sensor-name",
> +                                                  NULL);

Wouldn't aliases the proper OF way to do this?
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
