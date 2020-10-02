Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kOEID-0000UT-7V
 for barebox@lists.infradead.org; Fri, 02 Oct 2020 06:11:45 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
References: <20200930084716.4200-1-m.felsch@pengutronix.de>
 <20200930084716.4200-6-m.felsch@pengutronix.de>
 <f6e948fe-3116-5f19-b4a3-a40116602bc3@pengutronix.de>
Message-ID: <3e542640-e620-fc4a-6cc2-eb4266aeebf0@pengutronix.de>
Date: Fri, 2 Oct 2020 08:11:43 +0200
MIME-Version: 1.0
In-Reply-To: <f6e948fe-3116-5f19-b4a3-a40116602bc3@pengutronix.de>
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
Subject: Re: [PATCH v2 5/8] common: add initial barebox deep-probe support
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org



On 10/2/20 8:10 AM, Ahmad Fatoum wrote:
> I don't think it would be nice to just pass along driver probe errors as-is.

s/don't//

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
