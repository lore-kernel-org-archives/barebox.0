Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x235.google.com ([2a00:1450:4008:c01::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Up2cH-0002Wc-29
 for barebox@lists.infradead.org; Tue, 18 Jun 2013 20:35:03 +0000
Received: by mail-bk0-f53.google.com with SMTP id e11so1994188bkh.12
 for <barebox@lists.infradead.org>; Tue, 18 Jun 2013 13:34:39 -0700 (PDT)
Message-ID: <51C0C45C.80004@gmail.com>
Date: Tue, 18 Jun 2013 22:34:36 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1371576607-8090-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1371576607-8090-14-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130618202931.GC32299@pengutronix.de>
In-Reply-To: <20130618202931.GC32299@pengutronix.de>
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
Subject: Re: [PATCH 13/22] OF: base: import parent/child functions from Linux
 OF API
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 06/18/2013 10:29 PM, Sascha Hauer wrote:
> On Tue, Jun 18, 2013 at 07:29:58PM +0200, Sebastian Hesselbarth wrote:
>> This imports of_get_parent, of_get_next_child, of_get_next_available_child,
>> and of_get_child_by_name and corresponding helpers from Linux OF API.
>>
>> Signed-off-by: Sebastian Hesselbarth<sebastian.hesselbarth@gmail.com>
>> ---
[...]
>> +#define for_each_child_of_node(parent, child) \
>> +	for (child = of_get_next_child(parent, NULL); child != NULL; \
>> +	     child = of_get_next_child(parent, child))
>
> Why don't we just rename the original list iteration #define?
>
> I think we shouldn't generate worse code just for the sake of being in
> sync with Linux.

Agree, reworking this will take some days as I will not be able to
get back to it soon. Rebasing that 22 patches beast is time-consuming ;)

> I wonder why the Linux implementation doesn't use the Linux list
> implementation...

Maybe you should also raise that question on devtree-discuss?

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
