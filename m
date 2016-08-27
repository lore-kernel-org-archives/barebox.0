Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x236.google.com ([2a00:1450:400c:c09::236])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bdizk-0001fQ-HE
 for barebox@lists.infradead.org; Sat, 27 Aug 2016 19:10:21 +0000
Received: by mail-wm0-x236.google.com with SMTP id f65so30764870wmi.0
 for <barebox@lists.infradead.org>; Sat, 27 Aug 2016 12:09:59 -0700 (PDT)
References: <1472106992-30755-1-git-send-email-s.hauer@pengutronix.de>
 <d3c2af19-1d8f-a078-ef33-3cc43a14d990@gmail.com>
 <20160826054533.GP20657@pengutronix.de>
From: Peter Kardos <kardos.peter.sk@gmail.com>
Message-ID: <72965e1b-b43a-6ae8-8b91-82f6e8b1c1e4@gmail.com>
Date: Sat, 27 Aug 2016 21:09:45 +0200
MIME-Version: 1.0
In-Reply-To: <20160826054533.GP20657@pengutronix.de>
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
Subject: Re: [PATCH v2] ARM: vector_table: Fix creation of second level page
 table
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Thanks for the fix.

Peter

On 8/26/2016 7:45 AM, Sascha Hauer wrote:
> On Thu, Aug 25, 2016 at 11:32:43PM +0200, Peter Kardos wrote:
>> Tested this one as well  with my AT91RM9200 system, v2016.08 + patch; The
>> system starts/boots as expected.
>> If no one objects, we can consider this issue closed/fixed.
> I took this as a
> Tested-by: Peter Kardos <kardos.peter.sk@gmail.com>
>
> Thanks for testing.
>
> Sascha
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
