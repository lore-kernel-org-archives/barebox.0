Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x234.google.com ([2a00:1450:4013:c01::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W7Tri-0004dw-WA
 for barebox@lists.infradead.org; Sun, 26 Jan 2014 17:51:27 +0000
Received: by mail-ea0-f180.google.com with SMTP id o10so1334479eaj.39
 for <barebox@lists.infradead.org>; Sun, 26 Jan 2014 09:51:05 -0800 (PST)
Message-ID: <52E54B04.6090806@gmail.com>
Date: Sun, 26 Jan 2014 18:51:00 +0100
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1390756341-21349-1-git-send-email-m.grzeschik@pengutronix.de>
In-Reply-To: <1390756341-21349-1-git-send-email-m.grzeschik@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] scripts: kwbimage: fix imagebuild on 32bit host system
To: Michael Grzeschik <m.grzeschik@pengutronix.de>, barebox@lists.infradead.org

On 01/26/2014 06:12 PM, Michael Grzeschik wrote:
> We have to use strtoul to run the tool working on 32bit systems.
> Otherwise it will generate signed numbers for strings representing
> values with the 32nd bit set.
>
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>

Great catch,

Acked-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
