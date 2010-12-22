Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PVD9w-0004bQ-T4
	for barebox@lists.infradead.org; Wed, 22 Dec 2010 01:06:29 +0000
Date: Wed, 22 Dec 2010 02:01:30 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101222010130.GG19266@game.jcrosoft.org>
References: <m362uodqms.fsf@intrepid.localdomain>
	<m3lj3kca6m.fsf@intrepid.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m3lj3kca6m.fsf@intrepid.localdomain>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 12] Fix NOR CFI flash driver to work on big endian systems.
To: Krzysztof Halasa <khc@pm.waw.pl>
Cc: barebox@lists.infradead.org

On 00:10 Tue 21 Dec     , Krzysztof Halasa wrote:
> Fix NOR CFI flash driver to work on big endian systems.
> Basically this transforms the u8/u16/u32/u64 union into
> a single u64 value.
> 
> Not tested on LE platform. Apply with caution.
I'd like to test it a few this week can we wait a few before applying?

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
