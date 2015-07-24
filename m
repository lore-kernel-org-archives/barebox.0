Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZIbN3-00029t-Rs
 for barebox@lists.infradead.org; Fri, 24 Jul 2015 11:42:35 +0000
Message-ID: <55B22487.3050001@phytec.de>
Date: Fri, 24 Jul 2015 13:41:59 +0200
From: Daniel Schultz <d.schultz@phytec.de>
MIME-Version: 1.0
References: <1437638492-12290-1-git-send-email-d.schultz@phytec.de>
 <20150724074135.GP18700@pengutronix.de>
In-Reply-To: <20150724074135.GP18700@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1] commands: Add dhrystone
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


Am 24.07.2015 um 09:41 schrieb Sascha Hauer:
> On Thu, Jul 23, 2015 at 10:01:32AM +0200, Daniel Schultz wrote:
>> This tool will help to measure the system performance.
>>
>> Some SoCs haven't the possibility to route their clocks to the output pins.
>> So you can use dhrystone to get a feedback about the clock speed.
>>
>> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
>> ---
>>
>> Changes:
>> 	v1:
>> 	applied RFC suggestions:
>> 		-removed 'default n' in Kconfig
>> 		-refactored time defines with default time units
>> 		-only print variable values when values are wrong
>> 		-added units to printf
>> 		-the iteration parameter is now optional. The programm starts
>> 		with 10000 iterations and adjust higher, when execution time
>> 		is too short.
>
> I can see that the parameter is now optional, but I can't find the code
> which adjusts the number of iterations. Am I missing something?
>

At the end of the do_dhrystone function:

     if (user_time < TOO_SMALL_TIME) {
         number_of_runs = number_of_runs * 10;
         new_argv[0] = argv[0];
         sprintf(tmp_str, "%i", number_of_runs);
         new_argv[1] = tmp_str;
         printf("Measured time too small to obtain meaningful results\n");
         printf("or a timer wrap happend. I will increase the number\n");
         printf("of runs by *10 to %d\n", number_of_runs);
         printf("user_time: %llu ns\n", user_time);
         do_dhrystone(2, new_argv);
         ...

I'm sure there is a better solution.

Kind regards,
Daniel Schultz

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
