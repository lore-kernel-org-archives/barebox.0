Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZL4eu-0007HJ-Sl
 for barebox@lists.infradead.org; Fri, 31 Jul 2015 07:23:13 +0000
Date: Fri, 31 Jul 2015 09:22:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150731072250.GR18700@pengutronix.de>
References: <1438257272-39816-1-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1438257272-39816-1-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH v3] commands: Add dhrystone
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

Hi Daniel,

On Thu, Jul 30, 2015 at 01:54:32PM +0200, Daniel Schultz wrote:
> This tool will help to measure the system performance.
> 
> Some SoCs haven't the possibility to route their clocks to the output pins.
> So you can use dhrystone to get a feedback about the clock speed.
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---
> 
> +enum idents compare_chars(char char_1, char char_2)

All functions only used locally should be static.

> +{
> +	if (char_1 != char_2) {
> +		return ident_1;
> +	} else { /* should not executed */
> +		char_1_glob = char_1;
> +		return ident_2;
> +	}
> +}
> +
> +bool compare_strs(char str_1[31], char str_2[31])
> +{
> +	int offset;
> +
> +	offset = 2;
> +	while (offset <= 2)
> +		if (compare_chars(str_1[offset], str_2[offset+1]) == ident_1)
> +			++offset;
> +	if (strcmp(str_1, str_2) > 0) {
> +		int_glob = offset + 7;
> +		return true;
> +	} else {
> +		return false;
> +	}
> +
> +}
> +
> +bool check_ident(enum idents ident)
> +{
> +	if (ident == ident_3)
> +		return true;
> +	else
> +		return false;
> +}
> +

> +static void execution(u32 number_of_runs, u64 *start_time, u64 *end_time)
> +{
> +	int		int_1;
> +	int		int_2;
> +	int		int_3;
> +	char		char_i;
> +	enum idents	ident;
> +	char		str_1[31];
> +	char		str_2[31];
> +	int		i;
> +
> +	ident = ident_2;	/* prevent compiler warning */
> +	int_2 = 0; 		/* prevent compiler warning */
> +	int_3 = 0; 		/* prevent compiler warning */
> +
> +	record_glob->ptr_comp			= next_record_glob;
> +	record_glob->discr			= ident_1;
> +	record_glob->variant.var_1.enum_comp	= ident_3;
> +	record_glob->variant.var_1.int_comp	= 40;
> +	strcpy(record_glob->variant.var_1.str_comp,
> +		"DHRYSTONE PROGRAM, SOME STRING");
> +	strcpy(str_1, "DHRYSTONE PROGRAM, 1'ST STRING");
> +
> +	arr_2_glob[8][7] = 10;
> +	/* Was missing in published program. Without this statement,    */
> +	/* arr_2_glob [8][7] would have an undefined value.             */
> +	/* Warning: With 16-Bit processors and number_of_runs > 32000,  */
> +	/* overflow may occur for this array element.                   */
> +
> +	/***************/
> +	/* Start timer */
> +	/***************/
> +	*start_time = get_time_ns();

What I aimed at was a behaviour like outlined below, basically a
run-until-enough-time-elapsed:

static void dhrystone(int number_of_runs, u64 *difftime)
{
	u64 start;
	int now;

	if (number_of_runs)
		now = number_of_runs;
	else
		now = 10000;

	start = get_time_ns();

again:
	for (i = 0; i < now; i++)
		do_one_run;

	*difftime = get_time_ns() - start;

	if (number_of_runs)
		return;

	if (*difftime < TOO_SMALL_TIME)
		goto again;
}

Other than that this version looks much better than the last one, we're
getting closer ;)

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
