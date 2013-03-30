Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from inx.pm.waw.pl ([195.116.170.130])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ULvdJ-0006T3-QS
 for barebox@lists.infradead.org; Sat, 30 Mar 2013 13:15:46 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
References: <m3r4ixgmok.fsf@intrepid.localdomain>
 <m3ip49gmds.fsf@intrepid.localdomain>
 <1364644874.356017584@f97.mail.ru>
Date: Sat, 30 Mar 2013 14:15:43 +0100
In-Reply-To: <1364644874.356017584@f97.mail.ru> (Alexander Shiyan's message of
 "Sat, 30 Mar 2013 16:01:14 +0400")
Message-ID: <m3ppyhf2ps.fsf@intrepid.localdomain>
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
Subject: Re: [PATCH] Implement ALTERNATE memory layout.
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

Alexander Shiyan <shc_work@mail.ru> writes:

>> +config MEMORY_LAYOUT_ALTERNATE
>> +	bool "use alternate memory layout"
>> +	help
>> +	  select this option to use barebox's alternate memory layout:
>> +
>> +	  TEXT_BASE
>> +	  -----
>> +	  malloc heap
>> +	  -----
>> +	  stack
>> +
>
> This should be described better.

Well... I did it after the default layout. What do you propose?
-- 
Krzysztof Halasa

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
